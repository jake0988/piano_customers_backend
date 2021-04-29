class Fetching {
  constructor() {
    this.adapter = new Adapter;
  }

getPianosFetch(user, first, last) {
  this.adapter.fetchGetPianos(user)
  .then(pianos => {
    createPianoForm(user, first, last)
    showPianos(pianos, user) 
    })
    .catch((err) => console.log("Your errors", err))
}

  getFetch() {
    this.adapter.fetchCustomers()
    .then(users => {
      users.data.forEach(user => {
        let newUser = new User(user, user.attributes)
        const userContainer = document.getElementById("user-container")
        userContainer.innerHTML += newUser.renderUser()
      })
    })
    .catch(err => console.log("Your errors", err));
  }

 patchFetch(id, first_name, last_name,  email, address, phone_number, notes) {
    const bodyData = {first_name, last_name, email, address, phone_number, notes}
     this.adapter.fetchPatchCustomer(id, bodyData)
    .then(jsonData => {
      const user = User.findUser(id)
      // const div = document.createElement('div');
      // div.innerHTML = user.renderUpdateUser();

      // document.querySelector("#user-container").prependChild(div)
      const child = document.querySelector(`div[data-id="${user}"]`)
      const delUser = document.querySelector('#user-container')
      debugger
      // document.getElementById("user-container").innerHTML = ""
    })
    .catch(err => console.log("Your errors", err));
  }

postFetch(first_name, last_name, email, phone_number, address, technician_notes) {
    const bodyData = {first_name, last_name, email, phone_number, address, technician_notes};
    const userContainer = document.getElementById("user-container")
    // this.adapter.fetchPostCustomer(bodyData)
    fetch("http://localhost:3000/api/v1/users", {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(bodyData)
    }).then(res => res.json())
    .then (user => {
    const rUser = user.data;
    const newUser = new User(rUser, rUser.attributes);
    userContainer.innerHTML += newUser.renderUser();
  
    location.reload()
  })
  .catch(err => console.log("Your errors", err));
  }

 postPianoFetch(user_id, make, model, serial, age, private_technical_notes, image_url) {
    const bodyData = {piano: {make, model, serial, age, private_technical_notes, image_url, user_id}};
      this.adapter.fetchPostPiano(user_id, bodyData)
    .then(piano => {
      debugger
      const rPiano = piano.data;
      const newPiano = new Piano(rPiano, rPiano.attributes);
      document.getElementById("piano-container").innerHTML += newPiano.renderPiano();

      // location.reload();
  })
    .catch(err => console.log("Your errors", err))
}
}

