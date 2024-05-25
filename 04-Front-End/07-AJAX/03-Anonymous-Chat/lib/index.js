const batch = 104; // change to your own batch id
const baseUrl = `https://chat.api.lewagon.com/${batch}/messages`;

// Your turn to code!

const form = document.getElementById('comment-form');
const refreshButton = document.getElementById("refresh");
const messages = document.getElementById("messages-list");

form.addEventListener('submit', (event) => {
  event.preventDefault();

  const author = document.getElementById("your-name").value;
  const content = document.getElementById("your-message").value;
  const bodyValue = {
    author: author,
    content: content
  };

  console.log(`${author}, ${content}`)

  fetch(baseUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json'},
    body: JSON.stringify(bodyValue),
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
    })
})

refreshButton.addEventListener('click', (event) => {
  event.preventDefault();


  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      messages.innerHTML = "";
      const msgs = data.messages;
      msgs.forEach((msg) => {
        let liContent = `<li>${msg.content} (posted <span class="date">10 minutes ago</span>) by ${msg.author}</li>`;
        console.log(liContent)
        messages.insertAdjacentHTML("afterbegin", liContent);
      })
    })



})
