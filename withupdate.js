//genre generation

async function getGenrename() {
    let res = await fetch('http://books-api/genre');
    let genre = await res.json();
    document.querySelector('.selected-genre').innerHTML = '';
    genre.forEach((genres) => {
        document.querySelector('.selected-genre').innerHTML += `
            <option id="book_genre-edit" value="${genres.book_genre_id}" name="book_genre">${genres.genre_name}</option>
    `
    })
}

getGenrename();

async function getAuthors() {
    let author_data = await fetch('http://books-api/books');
    let author = await author_data.json();
    document.querySelector('.selected-author').innerHTML = '';
    author.forEach((authors) => {
        document.querySelector('.selected-author').innerHTML += `
            <option id="author-edit" value="${authors.author_id}" name="author">${authors.author_name}</option>
        `
    })
}

getAuthors();

//update book

async function updateBook(book_id) {
    const bookimage = document.getElementById('bookimage').files[0],
        name = document.getElementById('name').value,
        author = document.getElementById('author').value,
        book_genre = document.getElementById('book_genre').value,
        book_year = document.getElementById('book_year').value,
        script = document.getElementById('script').value;
    
    let formData = new FormData();
        formData.append('book_id', book_id);
        formData.append('bookimage', bookimage);
        formData.append('book_name', name);
        formData.append('author_id', author);
        formData.append('book_genre_id', book_genre);
        formData.append('book_year', book_year);
        formData.append('book_script', script);

    const mes = await fetch('http://books-api/books/${book_id}', {
        method: 'POST',
        body: formData
    });

    const data = await mes.json();
    
    if (data.status === true) {
        await getBooks();
    }
}