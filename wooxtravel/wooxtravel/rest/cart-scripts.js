document.addEventListener('DOMContentLoaded', function () {
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

    // Function to dynamically populate cart items
    function populateCart() {
        const cartContainer = document.getElementById('cartItems');
        cartContainer.innerHTML = '';

        cartItems.forEach(item => {
            const cartItemDiv = document.createElement('div');
            cartItemDiv.innerHTML = `
                <div class="cart-item">
                    <p>${item.name} - $<span class="cart-item-price">${item.price}</span></p>
                    <label for="quantity${item.id}">Quantity:</label>
                    <button class="quantity-btn" onclick="decreaseQuantity(${item.id})">-</button>
                    <input type="text" id="quantity${item.id}" class="quantity-input" value="${item.quantity}" readonly>
                    <button class="quantity-btn" onclick="increaseQuantity(${item.id})">+</button>
                    <button class="remove-btn" onclick="removeItem(${item.id})">Remove</button>
                </div>
            `;

            cartContainer.appendChild(cartItemDiv);
        });

        updateTotalAmount();
    }

    // Function to update total amount
    function updateTotalAmount() {
        const totalAmountElement = document.getElementById('totalAmount');
        const totalAmount = cartItems.reduce((total, item) => total + item.price * item.quantity, 0);
        totalAmountElement.textContent = totalAmount;

        // Store totalAmount in localStorage
        localStorage.setItem('totalAmount', totalAmount);
    }

    // Function to decrease quantity
    window.decreaseQuantity = function (itemId) {
        const item = cartItems.find(item => item.id === itemId);
        if (item && item.quantity > 1) {
            item.quantity--;
            populateCart();
        }
    };

    // Function to increase quantity
    window.increaseQuantity = function (itemId) {
        const item = cartItems.find(item => item.id === itemId);
        if (item) {
            item.quantity++;
            populateCart();
        }
    };

    // Function to remove item
    window.removeItem = function (itemId) {
        const itemIndex = cartItems.findIndex(item => item.id === itemId);
        if (itemIndex !== -1) {
            cartItems.splice(itemIndex, 1);
            populateCart();
        }
    };

    // Function to simulate checkout
    window.checkout = function () {
        // Prompt for customer information and payment options
        const customerName = prompt('Enter your name:');
        const phoneNumber = prompt('Enter your phone number:');
        const email = prompt('Enter your email:');
        const deliveryDate = prompt('Enter delivery date:');
        const deliveryAddress = prompt('Enter delivery address:');

        // Store customer details in localStorage
        const customerDetails = {
            name: customerName,
            phoneNumber: phoneNumber,
            email: email,
            deliveryDate: deliveryDate,
            deliveryAddress: deliveryAddress,
        };

        localStorage.setItem('customerDetails', JSON.stringify(customerDetails));

        const paymentOption = prompt('Select payment option:\n1. Cash on Delivery\n2. Card Payment\n3. QR Scan');

        // Handle payment options
        switch (paymentOption) {
            case '1':
                // Cash on Delivery
                alert(`Thank you, ${customerName}! Your order will be delivered to ${deliveryAddress}. You will pay in cash upon delivery.`);
                const generateBill = confirm('Do you want to generate a bill?');
                if (generateBill) {
                    // Generate bill dynamically
                    const billContent = generateBillContent(customerName, phoneNumber, email, deliveryDate, deliveryAddress);
                    alert('Bill generated:\n\n' + billContent);
                }
                break;
            case '2':
                // Card Payment
                // Store customer details in localStorage
                const customerDetailsCard = {
                    name: customerName,
                    phoneNumber: phoneNumber,
                    email: email,
                    deliveryDate: deliveryDate,
                    deliveryAddress: deliveryAddress,
                };

                localStorage.setItem('customerDetailsCard', JSON.stringify(customerDetailsCard));

                // Redirect to card.html for payment
                window.location.href = 'card.html';
                break;
            case '3':
                // QR Scan
                window.location.href = 'qrscan.html';
                break;
            default:
                alert('Invalid payment option.');
        }
    };

    // Initial population of the cart
    populateCart();
});
