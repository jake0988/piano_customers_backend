class Adapter {
  constructor() {
    this.baseUrl = "http://localhost:3000/api/v1/users";
    this.headers = {
      'Content-Type': 'application/json',
      // Accept: 'application/json'
    }
  }
  
  
  fetchCustomers() {
    return this.get(`${this.baseUrl}`);
  }


  fetchPostCustomer(bodyData) {
    return this.post(`${this.baseUrl}`, bodyData);
  }

  fetchPatchCustomer(id, body) {
    return this.patch(`${this.baseUrl}/${id}`, body);
  } 

  get(url) {
    return fetch(url).then(res => res.json());
  }

  fetchGetPianos(user_id) {
    return this.get(`${this.baseUrl}/${user_id}/pianos`);
}

  fetchPostPiano(user_id, body) {
    return this.post(`${this.baseUrl}/${user_id}/pianos`, body);
  }
  
  fetchDelete(user) {
    // const wind = window
    // if (confirmDelete(wind)) {
      const child = document.querySelector(`div[data-id="${user}"]`)
      const delUser = document.querySelector('#user-container')
      delUser.removeChild(child)
      this.delete(`${this.baseUrl}/${user}`)

    // .then(user => {
    //   debugger
  // })
}


// fetchPostCustomer() {
//   const data = { user: {first_name: 'example'} };
// return fetch(this.baseUrl, {
//   method: 'POST', // or 'PUT'
//   headers: {
//     'Content-Type': 'application/json',
//   },
//   body: JSON.stringify(data),
// })
// .then(response => response.json())
// .then(data => {
//   console.log('Success:', data);
// })
// .catch((error) => {
//   console.error('Error:', error);
// });
// }
  deletePiano(piano) {
    // const wind = window
    // if (confirmDelete(wind)) {
      this.delete(`http://localhost:3000/api/v1/pianos/${piano}`)
      // const delUser = document.querySelector('#user-container')
       document.querySelector(`#piano-container-${piano}`).innerHTML = ""

      this.fetchCustomers()
      debugger
  // }
  }
  
  post(url, bodyData) {
    return fetch(url, {
      method: 'POST',
      headers: this.headers,
      body: JSON.stringify(bodyData)
    }).then(res => res.json())
  }

  delete(url) {
    return fetch(url, {
      method: 'DELETE',
      headers: this.headers,
    }).then(res => res.json())
    .catch(err => console.log("Your errors", err))
  }


  patch(url, bodyData) {
    return fetch(url, {
      method: 'PATCH',
      headers: this.headers,
      body: JSON.stringify(bodyData),
    }).then(res => res.json())
  }

  
}

