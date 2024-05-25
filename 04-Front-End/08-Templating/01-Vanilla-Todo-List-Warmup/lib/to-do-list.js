const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

console.log(todos)

const container = document.getElementById("container");
const template = document.getElementById("template")
//const checkbox = document.querySelector("input[type=checkbox]");

todos.forEach((task) => {
  const clone = template.content.cloneNode(true)
  clone.getElementById('title').innerHTML = task.title;
  clone.querySelector("input[type=checkbox]").checked = task.done;

  container.appendChild(clone)
})

// To-do item HTML 👇


// TODO: Dynamically generate a list of to-dos based on `todos` array, and display them
