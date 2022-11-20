//genre generation

async function getGenrename() {
    let res = await fetch('http://books-api/genre');
    let genre = await res.json();
    document.querySelector('.selected-genre').innerHTML = '';
    genre.forEach((genres) => {
        document.querySelector('.selected-genre').innerHTML += `
            <option value="${genres.book_genre_id}" name="author">${genres.genre_name}</option>
    `
    })
}

getGenrename();

async function getAuthors() {
    let author_data = await fetch('http://books-api/author');
    let author = await author_data.json();
    document.querySelector('.selected-author').innerHTML = '';
    author.forEach((authors) => {
        document.querySelector('.selected-author').innerHTML += `
            <option value="${authors.author_id}" name="book_genre">${authors.author_name}</option>
        `
    })
}

getAuthors();