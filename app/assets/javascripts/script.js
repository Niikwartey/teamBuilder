// {
//   "user": {
//     "id": 1,
//     "first_name": "Derick",
//     "last_name": "Quartey",
//     "email": "dq@g.com",
//     "owned_projects": [

//     ],
//     "projects": [

//     ]
//   }
// }

function getProjects(user_id) {
  $.get(`/users/${user_id}.json`).done(data => {
    debugger
  })
}
