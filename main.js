// let clicker = document.getElementById("orange-clicker");

// // clicker.addEventListener('click', changeColor(clicker), false);

// // function changeColor(clicker) {
// //     clicker.style.border = "3px solid #F49347";
// // }

// clicker.style.border = "3px solid #F49347";

    //document.getElementById("orange-clicker").style.border = "3px solid ";
let clicker = document.getElementById("orange-clicker");
let i = 0;
clicker.addEventListener('click', addcolor);
    function addcolor() {
        if (i === 0) {
            clicker.style.border = "3px solid #F49347";
            i = i + 1;
        }
        else {
            clicker.style.border = "1px solid black";
            i = i - 1;
        }
    }
