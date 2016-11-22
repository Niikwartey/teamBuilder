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


// t.string   "name"
// t.string   "description"
// t.integer  "manager_id"
// t.datetime "created_at",                   null: false
// t.datetime "updated_at",                   null: false
// t.integer  "question_ids", default: [],                 array: true
//     t.boolean  "complete",     default: false
//     t.integer  "survey_id"

function getProjects(user_id) {
  $.get(`/users/${user_id}.json`).done(data => {
    // debugger
    let userData = data.user
    displayProjects(userData.owned_projects, "#managed-projects", userData.id)
    displayProjects(userData.projects, "#projects", userData.id)
  })
}

function displayProjects(projects, elemId, userId) {
  let container = $(elemId);
  container.html('');
  for(let project of projects) {
    container.append(`
      <div class="project">
      <button type="delete" value="delete">delete</button>
        <a href="/users/${userId}/projects/${project.id}">${project.name}</a>
        <p>
        <small><strong>Status</strong>: ${project.complete?'Completed':'In Progress'}</small></p>
      <div>
    `)
  }
}
