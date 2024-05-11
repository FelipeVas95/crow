document.addEventListener("DOMContentLoaded", function () {
    const images = document.querySelectorAll(".image");
    let currentIndex = 0;


    function toggleImages() {
        images.forEach((image) => (image.style.display = "none"));
        currentIndex = (currentIndex + 1) % images.length;
        images[currentIndex].style.display = "block";
    }
    const randomNumber = getRandomNumber(1000, 10000);
     setInterval(guiño, randomNumber);
    // Reinicia el ciclo cada 5 segundos (5000 milisegundos)
    function guiño(){
    setTimeout(function () {
        imageInterval = setInterval(toggleImages, 80);

        // Inicia un nuevo intervalo
    }, 10);
     setTimeout(function () {
         clearInterval(imageInterval)
         // Inicia un nuevo intervalo
     }, 430);
    }
});
