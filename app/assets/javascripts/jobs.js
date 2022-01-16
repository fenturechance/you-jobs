// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
const job = () => {
  if(!location.pathname.includes('jobs')) return
  const toogleBtn = document.querySelectorAll("#toggleOpen li");
  for (let i = 0; i < toogleBtn.length; i++) {
    toogleBtn[i].addEventListener('click', () => {
      for (let j = 0; j < toogleBtn.length; j++) {
        toogleBtn[j].classList.remove('active');
      }
      toogleBtn[i].classList.toggle('active');
    })
  }
}
job()