// Add click event listener to all cards
var cards = document.getElementsByClassName('card');
Array.from(cards).forEach(function(card) {
  card.addEventListener('click', flipCard);
});

// Function to flip the card
function flipCard() {
  this.classList.toggle('flipped');
}