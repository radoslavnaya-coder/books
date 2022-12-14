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

//books generation

async function getBooks() {
    let data = await fetch("http://books-api/books");
    let book = await data.json();
    document.querySelector('.card_container').innerHTML = '';
    book.forEach((books) => {
        document.querySelector('.card_container').innerHTML += `
        <div class="card">
            <img src="${books.book_img}" />
            <a href="#">
            <p style="font-size: 24px;text-align: center;line-height: 25px; height: 70px">${books.book_name}</p></a>
            <p class="card-p">${books.author_namer}</p>
            <p class="card-p">${books.book_year}</p>
            </div>
    `
    })
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
        </div>`;
        }
    })
    searchRes = 0;
}
search();

getBooks();