#!/usr/bin/env python3
"""Mide la altura de contenido de cada transparencia reveal.js (nbconvert --to slides)
con Chrome sin cabeza y lista las que superan un umbral del lienzo (700 px).

Uso:  python3 doc/tools/medir-transparencias.py 0.9 org-lessons/S05-Lecc04.slides.html ...
      (0.9 = listar las pantallas con más del 90 % de los 700 px; 0 = listar todas)
Numeración: t0 = portada, tN = N-ésima transparencia; tN.M = pantalla M (subslide).
Requiere google-chrome y red (reveal.js y MathJax se cargan de CDN).
"""
import sys, os, re, json, subprocess, shutil
JS = r"""
<script>
(function(){
  function go(){
    if (typeof Reveal==='undefined' || !Reveal.isReady || !Reveal.isReady()) { setTimeout(go,300); return; }
    var out=[]; var cfgH=Reveal.getConfig().height||700;
    var slides=Reveal.getSlides(); var k=0;
    function step(){
      if (k>=slides.length){ var pre=document.createElement('pre'); pre.id='MEASURE'; pre.textContent=JSON.stringify(out); document.body.appendChild(pre); return; }
      var sec=slides[k]; var idx=Reveal.getIndices(sec); Reveal.slide(idx.h, idx.v);
      setTimeout(function(){
        var h2=sec.querySelector('h1,h2,h3'); var title=h2?h2.textContent.trim():'';
        if(!title){ var p=sec.parentElement; if(p && p.tagName==='SECTION'){ var t=p.querySelector('h1,h2,h3'); title=(t?t.textContent.trim():'')+' (sub)'; } }
        var scale=Reveal.getScale(); var minTop=1e9, maxBottom=-1e9; var imgs=0, bad=0;
        var kids=sec.querySelectorAll('*');
        for (var i=0;i<kids.length;i++){ var el=kids[i]; if(el.tagName==='SCRIPT'||el.tagName==='STYLE') continue;
          var r=el.getBoundingClientRect(); if(r.height>0&&r.width>0){ if(r.top<minTop) minTop=r.top; if(r.bottom>maxBottom) maxBottom=r.bottom; }
          if(el.tagName==='IMG'){ imgs++; if(!(el.complete&&el.naturalHeight>0)) bad++; } }
        var hgt=(maxBottom-minTop)/scale;
        out.push({h:idx.h, v:idx.v, title:title.replace(/¶$/,''), height:Math.round(hgt), limit:cfgH, imgs:imgs, badimgs:bad, frags:sec.querySelectorAll('.fragment').length});
        k++; step();
      }, 700);
    }
    setTimeout(step,6000);
  }
  go();
})();
</script>
"""
def measure(html):
    src=open(html).read()
    tmp=html.replace('.slides.html','.MEASURE.html')
    src=src.replace("https://cdn.mathjax.org/mathjax/latest/MathJax.js","https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js")
    src=src.replace("Reveal.initialize({","window.Reveal=Reveal; Reveal.initialize({",1)
    open(tmp,'w').write(src.replace('</body>', JS+'</body>'))
    try:
        dom=subprocess.run(['google-chrome','--headless=new','--no-sandbox','--disable-gpu','--window-size=1280,900',
            '--allow-file-access-from-files','--virtual-time-budget=200000','--dump-dom','file://'+os.path.abspath(tmp)],
            capture_output=True,text=True,timeout=300).stdout
    finally:
        os.remove(tmp)
    m=re.search(r'<pre id="MEASURE">(.*?)</pre>',dom,re.S)
    if not m: return None
    import html as H
    return json.loads(H.unescape(m.group(1)))
if __name__=='__main__':
    thr=float(sys.argv[1]); files=sys.argv[2:]
    for f in files:
        res=measure(f)
        name=os.path.basename(f).replace('.slides.html','')
        if res is None: print(name,'MEASURE FAILED'); continue
        print(f"== {name}: {len(res)} pantallas, límite {res[0]['limit']}px")
        for r in res:
            if r['height']>thr*r['limit']:
                print(f"   t{r['h']}" + (f".{r['v']+1}" if r['v'] else "   ") + f"  {r['height']:4d}px  {r['title'][:60]}" + (f"  [{r['badimgs']} img sin cargar]" if r['badimgs'] else ""))
