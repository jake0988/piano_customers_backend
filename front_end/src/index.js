const endPoint = "http://localhost:3000/api/v1/users"

document.addEventListener('DOMContentLoaded', function () {
    // const adapter = new Adapter
    // adapter.fetchAdmin()
    const fetching = new Fetching
    fetching.getFetch()
    // createForm()
   const addUserForm = document.querySelector('#add-user-form')
   
   addUserForm.addEventListener('submit', (e) => {
     const app = new App
     app.eventFormHandler(e)
   })
  document.getElementById('user-container').addEventListener('click', e => {
    patchSequence(e)
  })
})


function patchSequence(e, user) {
  document.removeEventListener('click', e => patchSequence(e, user))
  console.log(e.target)
  //can't attach the listener to the edit button.
    if(e.target.matches("button.btn")) { 
      updateUser(e)
      }
    else if(e.target.matches("button.dlt-btn")) { 
      const adapter = new Adapter;
      adapter.fetchDelete(e.target.dataset.id)
      }
    else if(e.target.value === "Delete Piano") { 
      debugger
      const adapter = new Adapter;
      adapter.deletePiano(e.target.dataset.id, user)
      }
}

function updateUser(e) {
  const dataId = e.target.dataset.id
  const user = User.findUser(dataId)
  
  document.getElementById("user-container").innerHTML = user.renderUpdateUser()
  // user form still shows
  document.getElementById('user-patch-form').addEventListener('submit', e => {
  e.preventDefault()
  const app = new App
  app.patchEventFormHandler(e)
  }
  )}


function deletePianolistener(piano) {
  const pianoContainer = document.querySelector(`#piano-${piano.id}`)
      // pianoContainer.innerHTML = ""
  pianoContainer.addEventListener('click', e => {
    if(e.target.type == "submit") {
      const adapter = new Adapter
      adapter.deletePiano(piano.attributes.user_id, piano.id)
    }
    })
}

function createPianoForm(user, first, last) {
  const pianoForm = document.querySelector('div.form-container')
  pianoForm.innerHTML = Piano.addPiano(user, first, last)
  const container = document.querySelector('div.form-container')
  container.addEventListener('click', e => {
    
    if(e.target.type == 'submit') {
      const app = new App
      app.pianoEventFormHandler(user)
    }
})
}

function showPianos(pianos, user) {
  // const div = document.createElement('div') 
  const div = document.querySelector(`#piano-container-${user}`)
  const el = document.createElement('div')
  el.id = "piano-div"
  div.appendChild(el)
  // div.id = "piano-div"
  if(pianos.data) {
  // let pianos = piano.data
    pianos.data.forEach(piano => {
    let newPiano = new Piano(piano, piano.attributes)
    el.innerHTML += newPiano.renderPiano()
    deletePianolistener(piano)
    // return div
    // debugger
  })
  }
}

function hidePiano(piano, visible, user) {
  const pianoData = document.querySelector(`div[data-id="${piano}"]`);
   pianoData.style.visibility = (visible ? showPianos(piano, user) : pianoData.innerHTML = "");
  
}

function getPianos(id, first, last) {
  // let form = document.querySelector('#piano-form-name')
  // form.innerText = ""
  // const p = document.createElement('p')
  // debugger
  // p.innerText = `Add Piano For ${first} ${last}`
  // form.appendChild(p)
  const fetching = new Fetching;
  fetching.getPianosFetch(id, first, last)
}


function createForm() {
  const select = document.querySelector("#pianos")
  const option = document.createElement('option')
  option.innerText = "OPTION"
  select.appendChild(option)
}