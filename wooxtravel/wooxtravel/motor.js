$(document).ready(function() {
    // Add to Cart button click event
    $('.add-to-cart').click(function() {
        var item = $(this).closest('.item');
        var name = item.find('h3').text();
        var price = item.find('p').text().substring(1);
        var quantity = 1;
        var total = parseFloat(price);
        var cartItem = $('<tr><td>' + name + '</td><td>$' + price + '</td><td>' + quantity + '</td><td>$' + total + '</td></tr>');
        $('#cart-table tbody').append(cartItem);
        
        updateCart();
        showCartOverlay();
    });

    // Proceed to Pay button click event
    $('#proceed-to-pay').click(function() {
        hideCartOverlay();
        showPaymentOverlay();
    });

    // QR Code Scan button click event
    $('#qr-scan').click(function() {
        alert('QR Code Scan');
        showBillOverlay();
        resetCart();
    });

    // Card Payment button click event
    $('#card-payment').click(function() {
        alert('Card Payment');
        showBillOverlay();
        resetCart();
    });

    // Generate Bill form submission event
    $('#bill-form').submit(function(event) {
        event.preventDefault();
        var name = $('#name').val();
        var phone = $('#phone').val();
        var email = $('#email').val();
        var foodPrice = $('#food-price').text();
        var gst = $('#bill-gst').text();
        var totalAmount = $('#bill-total').text();
        
        alert('Bill Generated:\nName: ' + name + '\nPhone: ' + phone + '\nEmail: ' + email + '\nFood Price: $' + foodPrice + '\nGST: $' + gst + '\nTotal Amount: $' + totalAmount);
    });

    // Function to update Cart count
    function updateCart() {
        var cartItemCount = $('#cart-table tbody tr').length;
        $('#cart').text('Cart (' + cartItemCount + ')');
    }

    // Function to show Cart Overlay
    function showCartOverlay() {
        $('.cart-overlay').fadeIn();
    }

    // Function to hide Cart Overlay
    function hideCartOverlay() {
        $('.cart-overlay').fadeOut();
    }

    // Function to show Payment Overlay
    function showPaymentOverlay() {
        $('#payment-amount').text(calculateTotalAmount());
        $('.payment-overlay').fadeIn();
    }

    // Function to show Bill Overlay
    function showBillOverlay() {
        var foodPrice = calculateTotalAmount();
        var gst = (foodPrice * 0.05).toFixed(2);
        var totalAmount = parseFloat(foodPrice) + parseFloat(gst);

        $('#food-price').text(foodPrice);
        $('#bill-gst').text(gst);
        $('#bill-total').text(totalAmount.toFixed(2));

        $('.bill-overlay').fadeIn();
    }

    // Function to reset Cart
    function resetCart() {
        $('#cart-table tbody').empty();
        updateCart();
    }

    // Function to calculate Total Amount in the Cart
    function calculateTotalAmount() {
        var totalAmount = 0;

        $('#cart-table tbody tr').each(function() {
            var price = $(this).find('td:nth-child(4)').text().substring(1);
            totalAmount += parseFloat(price);
        });

        return totalAmount.toFixed(2);
    }
});