document.addEventListener('DOMContentLoaded', function () {
    const billDetailsContainer = document.getElementById('billDetails');

    // Sample cart data
    const cartItems = [
        { id: 1, name: 'Mushroom masala ', price: 12, quantity: 2 },
        { id: 2, name: 'Chicken Curry ', price: 15, quantity: 2 },
        { id: 3, name: 'Chocolate Cake ', price: 10, quantity: 2 },
        { id: 4, name: 'Hyderabadi Biryani ', price: 15, quantity: 2 },
        { id: 5, name: 'Garlic Bread ', price: 8, quantity: 2 },
        { id: 6, name: 'Coke', price: 2, quantity: 2 },
        { id: 7, name: 'Vanilla', price: 3, quantity: 2 }
    ];

    // Function to generate bill content
    function generateBillContent(customerDetails, foodItems) {
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
                <td colspan="3" class="order-details">Order Details:</td>
            </tr>
            <tr>
                <th>ID</th>
                <th>Item</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        `;

        foodItems.forEach(item => {
            const itemTotal = item.price * item.quantity;
            console.log(`Item: ${item.name}, Item Total: ${itemTotal}`);
            billContent += `
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.quantity}</td>
                    <td>$${itemTotal.toFixed(2)}</td>
                </tr>
            `;
        });

        billContent += `
            <tr>
                <td colspan="3" class="total-amount">Total Amount:</td>
                <td>$${getTotalAmountFromCartScripts().toFixed(2)}</td>
            </tr>
        </table>`;

        return billContent;
    }

    // Function to populate bill details
    function populateBill() {
        // Retrieve customer details and food items from cart-scripts.js
        const customerDetails = getCustomerDetailsFromCartScripts();
        const totalAmount = getTotalAmountFromCartScripts();

        // Generate bill content with food items and total amount
        const billContent = generateBillContent(customerDetails, cartItems);
        billDetailsContainer.innerHTML = billContent;
    }

    // Function to get customer details from cart-scripts.js
    function getCustomerDetailsFromCartScripts() {
        return JSON.parse(localStorage.getItem('customerDetails')) || {};
    }

    // Function to get total amount from cart-scripts.js
    function getTotalAmountFromCartScripts() {
        return cartItems.reduce((total, item) => total + item.price * item.quantity, 0);
    }

    // Call the function to populate bill details
    populateBill();

    // Function to return to the Food Order page
    window.returnToFoodOrder = function () {
        // Redirect to food-order.html
        window.location.href = 'food-order.html';
    };
});
