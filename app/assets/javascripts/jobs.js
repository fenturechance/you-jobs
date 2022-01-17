// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
const job = () => {
  if(!location.pathname.includes('jobs')) return
  const toogleBtn = document.querySelectorAll("#toggleOpen li");
  if(document.getElementById('openStatus').checked !== true) {
    toogleBtn[0].classList.remove('active');
    toogleBtn[1].classList.toggle('active');
  }else {
    // document.getElementById('openStatus').value = true
  }
  for (let i = 0; i < toogleBtn.length; i++) {
    toogleBtn[i].addEventListener('click', () => {
      for (let j = 0; j < toogleBtn.length; j++) {
        toogleBtn[j].classList.remove('active');
      }
      toogleBtn[i].classList.toggle('active');
      if(i === 0) {
        document.getElementById('openStatus').setAttribute('checked', 'checked')
        document.getElementById('openStatus').value = '1'
      }else if(i === 1) {
        // document.getElementById('openStatus').removeAttribute('checked')
        document.getElementById('openStatus').value = '0'
      }
    })
  }
  document.getElementById('company_id').value = parseInt(location.search.replace('?company_id=', ''))
}
job()