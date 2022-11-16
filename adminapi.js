//genre generation

async function getGenrename() {
    let res = await fetch("http://books-api/genre");
    let genre = await res.json();
    document.querySelector(".search-help__links").innerHTML = "";
    genre.forEach((genres) => {
        document.querySelector(".search-help__links").innerHTML += `
            <div class="links" id="orange-clicker"><a>${genres.genre_name}</a></div>
    `;
    });
}

getGenrename();

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
            <p style="font-size: 24px;text-align: center;line-height: 25px;">${books.book_name}</p></a>
            <p class="card-p">${books.author_name}</p>
            <p class="card-p">${books.book_year}</p>
            <p class="topscript" style="width: 188px;">Редактировать</p>
            <p class="topscript" style="width: 120px;">Удалить</p>
        </div>

    `;
    });
}

getBooks();