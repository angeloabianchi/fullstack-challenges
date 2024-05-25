const apiKey = "adf1f2d7";


// Here is 2 other API key if the one above doesn't work anymore:
// - 48727053
// - 8691812a

// Your turn to code!

const form = document.getElementById('search-movies');
const cards = document.getElementById('movie-cards')

form.addEventListener('keyup', (event) => {
  event.preventDefault();

  const title = document.getElementById('movie-name').value;
  const omdbapiUrl = `http://www.omdbapi.com/?s=${title}&apikey=${apiKey}`;

  fetch(omdbapiUrl)
    .then(res => res.json())
    .then((data) => {
      console.log(data.Search)
      const movies = data.Search;

      cards.innerHTML = '';

      movies.forEach((movie) => {
        let card = `<div class="col-lg-3 col-md-4 col-sm-6 col-12">
          <div class="card mb-2">
            <img
              src=${movie.Poster}
              class="card-img-top"
              alt=${movie.Title}
            />
            <div class="card-body">
              <span class="badge bg-primary mb-2">${movie.Year}</span>
              <h5 class="card-title">${movie.Title}</h5>
            </div>
          </div>
        </div>`

        cards.insertAdjacentHTML("afterbegin", card);
      })
    })

})
