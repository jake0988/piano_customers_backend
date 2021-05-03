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
      const userContainer = document.querySelector("#user-container")
      // .innerHTML = " "
      users.data.forEach(user => {
        let newUser = new User(user, user.attributes)
        
        userContainer.innerHTML += newUser.renderUser()
      })
    })
    .catch(err => console.log("Your errors", err));
  }

 patchFetch(id, first_name, last_name,  email, address, phone_number, technician_notes) {
    const bodyData = {first_name, last_name, email, address, phone_number, technician_notes}
     this.adapter.fetchPatchCustomer(id, bodyData)
    .then(users => {
      document.getElementById("user-container").innerHTML = ""
      return users
    })
    .then(users => {
      this.getFetch()
    })
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
    })
  .catch(err => console.log("Your errors", err));
  }

 postPianoFetch(user_id, make, model, serial, age, private_technical_notes, image_url) {
    const bodyData = {piano: {make, model, serial, age, private_technical_notes, image_url, user_id}};
      this.adapter.fetchPostPiano(user_id, bodyData)
      .then(json => {
      return this.adapter.fetchCustomers()
    })
    .then(users => {
      resetPianoForm(user_id);
      document.getElementById("user-container").innerHTML = "";
      const userContainer = document.querySelector("#user-container");
      // .innerHTML = " "
      users.data.forEach(user => {
        let newUser = new User(user, user.attributes);
        
        userContainer.innerHTML += newUser.renderUser();
      })
    })

    function resetPianoForm(user) {
      document.querySelector(`[user-id="${user}"]`).reset()
    }
    // .then(piano => {
    //   this.getFetch()
      // const rPiano = piano.data;
      // const newPiano = new Piano(rPiano, rPiano.attributes);
      // document.getElementById("piano-container").innerHTML += newPiano.renderPiano();

  // })
    // .catch(err => console.log("Your errors", err))
}
}
