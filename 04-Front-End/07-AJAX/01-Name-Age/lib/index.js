const apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";

const displayDefinition = (event) => {
  event.preventDefault();
  const word = document.getElementById("word").value;
  const definition = document.getElementById("definition")
  const url = apiUrl + word
  // TODO: Display your word's definition with an AJAX call instead of the console.log()

  fetch(url, {
    method: 'GET',
    headers: { 'content-type': 'application/json'},
  })
    .then(response => response.json())
    .then((data) => {
      const def = data[0].meanings[0].definitions[0].definition
      definition.innerText = def;
    })

  console.log(word);


};

const form = document.getElementById("fetch-word");
form.addEventListener("submit", displayDefinition);
