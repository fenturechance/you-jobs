// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
const switchs = document.querySelectorAll('.switch input[type="checkbox"]')
for (let i = 0; i < switchs.length; i++) {
  switchs[i].addEventListener('input', e => {
    const open = e.target.checked ? '1' : '0'
    switchs[i].value = open
    const id = e.target.id.replace('checkbox', '')
    document.getElementById(`form${id}`).submit()
  })
}

const deleteImgs = document.querySelectorAll('.deleteImg')
for (let i = 0; i < deleteImgs.length; i++) {
  deleteImgs[i].addEventListener('click', e => {
    const id = e.target.id.replace('deletebtn', '')
    document.getElementById(`deleteform${id}`).submit()
  })
}
