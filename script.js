var a = document.getElementById("input");
var b = document.getElementById("wynik");

function area() {
    if(a.value != '') { //nie sprawdzam juz tutaj czy value jest liczbą bo textbox nie przyjmuje niczego innego poza liczba
        b.innerHTML = "P<sup>2</sup> = " + (a.value * a.value)
    }else {
        alert('wpisz cos do input boxa!')
    }
}

function perimeter() {
    if(a.value != '') { //nie sprawdzam juz tutaj czy value jest liczbą bo textbox nie przyjmuje niczego innego poza liczba
        b.innerHTML = "Obw. = 4a = " + (a.value * 4)
    }else {
        alert('wpisz cos do input boxa!')
    }
}