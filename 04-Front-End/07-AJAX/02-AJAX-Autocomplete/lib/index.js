// TODO: Autocomplete the input with AJAX calls.
const apiUrl = 'https://dictionary.lewagon.com/autocomplete/'

const input = document.getElementById("search")
const results = document.getElementById("results")

let liContent = '';

input.addEventListener('keyup', (event) => {
  event.preventDefault();
  const search = document.getElementById('search').value;
  const url = apiUrl + search;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      const suggestions = data.words

      suggestions.forEach((suggestion) => {
        liContent += `<li>${suggestion}</li>`
      })

      results.innerHTML = liContent;
    })

    liContent = '';
})

//results.style.color = 'red'
