//genre generation

async function getGenrename() {
    let res = await fetch('http://books-api/genre');
    let genre = await res.json();

    const selectedGenre = [];

    document.querySelector('.search-help__links').innerHTML = '';

    document.querySelector('.search-help__links').innerHTML += `
    <input onclick="getBooks()" type="button" class="links" value="Все жанры">
    `

    genre.forEach((genres) => {
        document.querySelector('.search-help__links').innerHTML += `
            <input onclick="getBookByGenre(${genres.book_genre_id})" type="button" class="links" id="orange-clicker" value="${genres.genre_name}">
    `
        selectedGenre.push(genres.genre_name);
    })
    const sel = document.querySelector('.search-help__links');
    sel.addEventListener("click", function(e) {
        selectedGenre[0] = e.target.value;
        console.log(selectedGenre[0]);
    })
    console.log(selectedGenre);
}

async function getBookByGenre(book_genre_id) {
    console.log(book_genre_id);
    let res = await fetch (`http://books-api/genre/${book_genre_id}`);
    let book = await res.json();

    document.querySelector('.card_container').innerHTML = '';

    book.forEach((books) => {
        document.querySelector(".card_container").innerHTML += `
        <div class="card">
            <img src="${books.book_img}" />
            <p style="font-size: 24px;text-align: center;line-height: 25px; height: 70px">${books.book_name}</p>
            <p class="card-p">${books.author_namer}</p>
            <p class="card-p">${books.book_year}</p>
            <a onclick="updateBook(${books.book_id})" href="#okno"><p class="topscript" style="width: 188px">Редактировать</p></a>
            <p onclick="removeBook(${books.book_id})" class="topscript" style="width: 120px; cursor:pointer">Удалить</p>
        </div>
    `;
    })
}

getGenrename();

//input genre generation

async function getGenresname() {
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

getGenresname();

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

//books generation

async function getBooks() {
    let data = await fetch("http://books-api/books");
    let book = await data.json();
    document.querySelector(".card_container").innerHTML = "";
    book.forEach((books) => {
        document.querySelector(".card_container").innerHTML += `
        <div class="card">
            <img src="${books.book_img}" />
            <a href="#">
            <p style="font-size: 24px;text-align: center;line-height: 25px; height: 70px">${books.book_name}</p></a>
            <p class="card-p">${books.author_namer}</p>
            <p class="card-p">${books.book_year}</p>
            <a onclick="updateBook(${books.book_id})" href="#okno"><p class="topscript" style="width: 188px">Редактировать</p></a>
            <p onclick="removeBook(${books.book_id})" class="topscript" style="width: 120px; cursor:pointer">Удалить</p>
        </div>
    `;
    })
}

//remove books

async function removeBook(book_id) {
    console.log(book_id);
    const rem = await fetch(`http://books-api/books/${book_id}`, {
         method: 'DELETE'
    });
    const deletedata = await rem.json();
    if (deletedata.status === true) {
        await getBooks();
    }
}

//search

async function search(){
    let searchRes = document.getElementById('searchbar').value;
    
    let res = await fetch('http://books-api/books');
    let book = await res.json();

    document.querySelector('.card_container').innerHTML = '';

    book.forEach((books) => {
        findBookNameSearch = books.book_name.indexOf(searchRes);
        findAuthorNameSearch = books.author_namer.indexOf(searchRes);
        findSearchBookName = searchRes.indexOf(books.book_name);
        findSearchAuthorName = searchRes.indexOf(books.author_namer);

        if(findSearchAuthorName != -1 || findSearchBookName != -1 || findBookNameSearch != -1 || findAuthorNameSearch != -1){
            document.querySelector('.card_container').innerHTML += `
            <div class="card">
            <img src="${books.book_img}" />
            <a href="#">
            <p style="font-size: 24px;text-align: center;line-height: 25px; height: 70px">${books.book_name}</p></a>
            <p class="card-p">${books.author_namer}</p>
            <p class="card-p">${books.book_year}</p>
            <a onclick="updateBook(${books.book_id})" href="#okno"><p class="topscript" style="width: 188px">Редактировать</p></a>
            <p onclick="removeBook(${books.book_id})" class="topscript" style="width: 120px; cursor:pointer">Удалить</p>
        </div>`;
        }
    })
    searchRes = 0;
}
search();

//update book

async function updateBook(book_id) {
    console.log(book_id);
    const bookimage = document.getElementById('bookimage').files[0],
        name = document.getElementById('name').value,
        book_year = document.getElementById('book_year').value,
        script = document.getElementById('script').value;
    
    let formData = new FormData();
        formData.append('book_id', book_id);
        formData.append('bookimage', bookimage);
        formData.append('book_name', name);
        formData.append('author_id', selectValue[0]);
        formData.append('book_genre_id', selectGenre[0]);
        formData.append('book_year', book_year);
        formData.append('book_script', script);

    const mes = await fetch(`http://books-api/books/${book_id}`, {
        method: 'POST',
        body: formData
    });

    const data = await mes.json();
    
    if (data.status === true) {
        await getBooks();
    }
}

getBooks();