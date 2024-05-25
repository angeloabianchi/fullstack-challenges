const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

// TODO: Use the template in the `index.html` to dynamically generate a list based on `todos` array
const template = document.getElementById('todoItemTemplate');
const todoContainer = document.getElementById('todosContainer');

todos.forEach((task) => {
  const clone = template.content.cloneNode(true);
  clone.getElementById('title').innerHTML = task.title;
  clone.querySelector("input[type=checkbox]").checked = task.done;

  todoContainer.appendChild(clone);
})
