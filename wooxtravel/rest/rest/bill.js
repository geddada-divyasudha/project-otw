// bill.js
document.addEventListener('DOMContentLoaded', function () {
    const billDetailsContainer = document.getElementById('billDetails');

    // Function to populate bill details
    function populateBill() {
        // Retrieve customer details from localStorage
        const customerDetails = JSON.parse(localStorage.getItem('customerDetails'));

        // Sample cart data (modify as needed)
        const cartItems = [
            { name: 'Veg Dish 1', price: 12, quantity: 2 },
            // Add more items as needed
        ];

        // Calculate total amount
        const totalAmount = cartItems.reduce((total, item) => total + item.price * item.quantity, 0);

        // Create bill details HTML
        const billHTML = `
            <div class="bill-section">
                <h2>Customer Details</h2>
                <p><strong>Name:</strong> ${customerDetails.name}</p>
                <p><strong>Phone Number:</strong> ${customerDetails.phoneNumber}</p>
                <p><strong>Email:</strong> ${customerDetails.email}</p>
                <p><strong>Delivery Date:</strong> ${customerDetails.deliveryDate}</p>
                <p><strong>Delivery Address:</strong> ${customerDetails.deliveryAddress}</p>
            </div>

            <div class="bill-section">
                <h2>Order Details</h2>
                <ul>
                    ${cartItems.map(item => `<li>${item.name} - $${item.price} x ${item.quantity}</li>`).join('')}
                </ul>
                <p><strong>Total Amount:</strong> $${totalAmount}</p>
            </div>
        `;

        // Append bill details to the container
        billDetailsContainer.innerHTML = billHTML;
    }

    // Call the function to populate bill details
    populateBill();

    // Function to return to the Food Order page
    window.returnToFoodOrder = function () {
        // Redirect to food-order.html
        window.location.href = 'food-order.html';
    };
});
