
document.querySelectorAll('[data-set-lang]').forEach(btn=>{
  btn.addEventListener('click',()=>{
    const en=btn.dataset.setLang==='en';
    document.body.classList.toggle('show-en',en);
    document.querySelectorAll('[data-set-lang]').forEach(b=>b.classList.toggle('active',b.dataset.setLang===(en?'en':'fr')));
  });
});
