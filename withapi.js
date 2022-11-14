//genre generation

async function getGenrename() {
    let res = await fetch('http://books-api/genre');
    let genre = await res.json();
    document.querySelector('.search-help__links').innerHTML = '';
    genre.forEach((genres) => {
        document.querySelector('.search-help__links').innerHTML += `
            <div class="links" id="orange-clicker"><a>${genres.genre_name}</a></div>
    `
    })
}

getGenrename();