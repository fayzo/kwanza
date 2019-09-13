
// ********** JOBS SLIDES ****************
// ********** JOBS SLIDES ****************
var slideIndex = 1;

showSlides2(slideIndex);

function plusSlides2(n) {
  showSlides2(slideIndex += n);
}

function currentSlide2(n) {
  showSlides2(slideIndex = n);
}

function showSlides2(n) {
  var i;
  var slides = document.getElementsByClassName("mySlidesx2");
  var dots = document.getElementsByClassName("dot2");
  if (n > slides.length) { slideIndex = 1 }
  if (n < 1) { slideIndex = slides.length }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex - 1].style.display = "flex";
  dots[slideIndex - 1].className += " active";
}
// *******************FOLLOW SLIDES HOME************************
// *******************FOLLOW SLIDES HOME************************
// *******************FOLLOW SLIDES HOME************************
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlidesx_");
  var dots = document.getElementsByClassName("dot_");
  if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex - 1].style.display = "flex";
  dots[slideIndex-1].className += " active";

}

// ********** EVENTS SLIDES ****************
// ********** EVENTS SLIDES ****************

showSlides0(slideIndex);

function plusSlides0(n) {
  showSlides0(slideIndex += n);
}

function currentSlide0(n) {
  showSlides0(slideIndex = n);
}

function showSlides0(n) {
  var i;
  var slides = document.getElementsByClassName("mySlidesx0");
  var dots = document.getElementsByClassName("dot0");
  if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex - 1].style.display = "flex";
  dots[slideIndex-1].className += " active";
}

  // ********** Fundraising SLIDES ****************
  // ********** Fundraising SLIDES ****************

showSlides1(slideIndex);

function plusSlides1(n) {
  showSlides1(slideIndex += n);
}

function currentSlide1(n) {
  showSlides1(slideIndex = n);
}

function showSlides1(n) {
  var i;
  var slides = document.getElementsByClassName("mySlidesx1");
  var dots = document.getElementsByClassName("dot1");
  if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex - 1].style.display = "flex";
  dots[slideIndex-1].className += " active";
}
