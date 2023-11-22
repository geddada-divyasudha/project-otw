document.addEventListener('DOMContentLoaded', function () {
    const billDetailsContainer = document.getElementById('billDetails');

    // Function to generate bill content
    function generateBillContent(customerDetails, foodItems, totalAmount) {
        let billContent = `
        <table class="bill-table">
            <tr>
                <td colspan="2" class="customer-details">Customer Details:</td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>${customerDetails.name}</td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td>${customerDetails.phoneNumber}</td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>${customerDetails.email}</td>
            </tr>
            <tr>
                <td>Delivery Address:</td>
                <td>${customerDetails.deliveryAddress}</td>
            </tr>
            <tr>
                <td>Delivery Date:</td>
                <td>${customerDetails.deliveryDate}</td>
            </tr>
            <tr>
                <td colspan="2" class="order-details">Order Details:</td>
            </tr>
            <tr>
                <th>Item</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <tr>
                <td colspan="2" class="total-amount">Total Amount:</td>
                <td>$${totalAmount.toFixed(2)}</td>
            </tr>
        `;

        foodItems.forEach(item => {
            const itemTotal = item.price * item.quantity;
            console.log(`Item: ${item.name}, Item Total: ${itemTotal}`);
            billContent += `
                <tr>
                    <td>${item.name}</td>
                    <td>${item.quantity}</td>
                    <td>$${itemTotal.toFixed(2)}</td>
                </tr>
            `;
        });

        return billContent;
    }

    // Function to populate bill details
    function populateBill() {
        // Retrieve customer details and food items from cart-scripts.js
        const customerDetails = getCustomerDetailsFromCartScripts();
        const foodItems = getFoodItems();
        const totalAmount = getTotalAmount();

        // Generate bill content
        const billContent = generateBillContent(customerDetails, foodItems, totalAmount);
        billDetailsContainer.innerHTML = billContent;
    }

    // Function to get total amount from localStorage
    function getTotalAmount() {
        return parseFloat(localStorage.getItem('totalAmount')) || 0;
    }

    // Function to get customer details from cart-scripts.js
    function getCustomerDetailsFromCartScripts() {
        return JSON.parse(localStorage.getItem('customerDetails')) || {};
    }

    // Function to get food items from cart-scripts.js
    function getFoodItems() {
        return JSON.parse(localStorage.getItem('foodItems')) || [];
    }

    // Call the function to populate bill details
    populateBill();

    // Function to return to the Food Order page
    window.returnToFoodOrder = function () {
        // Redirect to food-order.html
        window.location.href = 'food-order.html';
    };
});
