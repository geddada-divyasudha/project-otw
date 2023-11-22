// scripts.js

// Sample data structure to store selected items in the cart
let cartItems = [];

function updateTotalPrice(priceId, quantityId, totalPriceId) {
    // Get the selected quantity and price
    const quantity = document.getElementById(quantityId).value;
    const price = parseFloat(document.getElementById(priceId).innerText);

    // Calculate the total price based on quantity
    const totalPrice = quantity * price;

    // Update the total price in the HTML
    document.getElementById(totalPriceId).innerText = totalPrice.toFixed(2);
}

function addToCart(image, name, price, quantityId) {
    // Get the selected quantity
    const quantity = document.getElementById(quantityId).value;

    // Create an object for the selected item
    const newItem = {
        image: image,
        name: name,
        price: price,
        quantity: parseInt(quantity),
    };

    // Add the item to the cart
    cartItems.push(newItem);

    // Display an alert confirming that the item is added to the cart
    alert(`${name} (Quantity: ${quantity}) added to cart.`);
}

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
