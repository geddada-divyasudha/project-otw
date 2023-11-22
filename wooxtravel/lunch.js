// Define global variables
let cart = [];
let totalAmount = 0;
let customerName = '';
let customerPhone = '';
let customerEmail = '';
let cardNumber = '';
let cvv = '';
let expiryDate = '';
let otp = '';

function addToCart(item, price) {
  cart.push({item: item, price: price});
  totalAmount += price;
  
  // Update cart items
  let cartItems = '';
  for (let i = 0; i < cart.length; i++) {
    cartItems += `<tr>
                    <td>${cart[i].item}</td>
                    <td>$${cart[i].price}</td>
                  </tr>`;
  }
  $('#cartItems').html(cartItems);

  // Update total amount
  $('#totalAmount').text('$' + totalAmount);
}

function proceedToPay() {
  $('#foodItems').hide();
  $('#cart').hide();
  $('#payment').show();
}

function getCardDetails() {
  cardNumber = prompt('Enter your card number:');
  cvv = prompt('Enter your CVV:');
  expiryDate = prompt('Enter your card expiry date (MM/YY):');
  otp = prompt('Enter the OTP sent to your mobile:');
}

function generateBill() {
  $('#payment').hide();
  $('#bill').show();

  // Get customer details
  customerName = prompt('Enter your name:');
  customerPhone = prompt('Enter your phone number:');
  customerEmail = prompt('Enter your email:');
  
  // Get card details
  getCardDetails();

  // Update customer details
  $("#customerDetails").text("Name: " + customerName + "\nPhone: " + customerPhone + "\nEmail: " + customerEmail);

  // Update bill items
  let billItems = '';
  for (let i = 0; i < cart.length; i++) {
    billItems += `<tr>
                    <td>${cart[i].item}</td>
                    <td>$${cart[i].price}</td>
                  </tr>`;
  }
  $('#billItems').html(billItems);

  // Calculate GST (assuming 10%)
  let gstAmount = (totalAmount * 10) / 100;
  let totalAmountWithGST = totalAmount + gstAmount;

  // Update total amount with GST
  $('#totalAmount').text('$' + totalAmountWithGST);

  // Display thank you message
  alert('Thank you for ordering!\nYour bill has been generated successfully.');
}

function searchFood() {
  const searchText = $('#foodSearch').val().toLowerCase();
  const foodCards = $('#foodItems .card');

  for (let i = 0; i < foodCards.length; i++) {
    const cardTitle = $(foodCards[i]).find('.card-title').text().toLowerCase();
    if (cardTitle.includes(searchText)) {
      $(foodCards[i]).show();
    } else {
      $(foodCards[i]).hide();
    }
  }
}
