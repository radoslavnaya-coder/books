//genre generation

async function getGenrename() {
    let res = await fetch('http://books-api/genre');
    let genre = await res.json();
    document.querySelector('.selected-genre').innerHTML = '';
    
    document.querySelector('.selected-genre').innerHTML += `
            <option id="book_genre" value="" name="book_genre">Выберите жанр</option>
    `
    genre.forEach((genres) => {
        document.querySelector('.selected-genre').innerHTML += `
            <option id="book_genre" value="${genres.book_genre_id}" name="book_genre">${genres.genre_name}</option>
    `
    })
}

const selectGenre = [];
const sel = document.querySelector('.selected-genre');
sel.addEventListener('change', function(e){
    selectGenre[0] = e.target.value;
    console.log(selectGenre[0]);
})

getGenrename();

async function getAuthors() {
    let author_data = await fetch('http://books-api/author');
    let author = await author_data.json();
    document.querySelector('.selected-author').innerHTML = '';

    document.querySelector('.selected-author').innerHTML += `
            <option id="author" value="" name="author">Выберите автора</option>
        `
    author.forEach((authors) => {
        document.querySelector('.selected-author').innerHTML += `
            <option id="author" value="${authors.author_id}" name="author">${authors.author_name}</option>
        `
    })
}

const selectValue = [];
const select = document.querySelector('.selected-author');
select.addEventListener('change', function(e){
    selectValue[0] = e.target.value;
    console.log(selectValue[0]);
})

getAuthors();

async function addBook() {
    const bookimage = document.getElementById('bookimage').files[0],
        name = document.getElementById('name').value,
        book_year = document.getElementById('book_year').value,
        script = document.getElementById('script').value;
    
    let formData = new FormData();
        formData.append('bookimage', bookimage);
        formData.append('book_name', name);
        formData.append('author_id', selectValue[0]);
        formData.append('book_genre_id', selectGenre[0]);
        formData.append('book_year', book_year);
        formData.append('book_script', script);

    const mes = await fetch('http://books-api/books', {
        method: 'POST',
        body: formData
    });

    const data = await mes.json();
    
    if (data.status === true) {
        await getBooks();
    }
}