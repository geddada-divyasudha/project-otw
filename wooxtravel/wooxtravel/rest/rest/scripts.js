// scripts.js

// Sample data structure to store selected items in the cart
var cart = [];


function updateTotalPrice(priceId, quantityId, totalId) {
    const price = document.getElementById(priceId).innerText;
    const quantity = document.getElementById(quantityId).value;
    const total = price * quantity;
    document.getElementById(totalId).innerText = total;

    updateCartTotal();
}
function addToCart(itemId, itemName, priceId, quantityId) {
    const quantity = document.getElementById(quantityId).value;
    const price = document.getElementById(priceId).innerText;
    const total = price * quantity;

    const cartItem = `${itemName} x${quantity} - $${total}`;
    const cartItemsList = document.getElementById('cartItems');
    const listItem = document.createElement('li');
    listItem.textContent = cartItem;
    cartItemsList.appendChild(listItem);

    updateCartTotal();
}

function addToCart(itemId, itemName, priceId, quantityId) {
    const quantity = document.getElementById(quantityId).value;
    const price = document.getElementById(priceId).innerText;
    const total = price * quantity;

    const cartItem = `${itemName} x${quantity} - $${total}`;
    const cartItemsList = document.getElementById('cartItems');
    const listItem = document.createElement('li');
    listItem.textContent = cartItem;
    cartItemsList.appendChild(listItem);

    updateCartTotal();
}


    // Add the item to the cart
    cartItems.push(newItem);

    // Display an alert confirming that the item is added to the cart
    alert(`${name} (Quantity: ${quantity}) added to cart.`);

function searchDishes() {
    // Your searchDishes logic goes here
    // This function should handle searching for dishes
}

function viewCart() {
    // Display the current items in the cart
    let cartDetails = "Cart Items:\n";

    if (cartItems.length === 0) {
        cartDetails += "Empty";
    } else {
        cartItems.forEach((item, index) => {
            cartDetails += `${index + 1}. ${item.name} - $${(item.price * item.quantity).toFixed(2)} (Quantity: ${item.quantity})\n`;
        });
    }

    // Show the cart details in an alert
    alert(cartDetails);
}

// scripts.js

function redirectToCart() {
    // Redirect to the cart page
    window.location.href = "cart.html"; // Replace "cart.html" with your actual cart page URL
}
