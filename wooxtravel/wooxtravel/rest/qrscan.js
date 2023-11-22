// qrscan.js
document.addEventListener('DOMContentLoaded', function () {
    const scanOptionSelect = document.getElementById('scanOption');
    const scannerOption = document.getElementById('scannerOption');
    const upiOption = document.getElementById('upiOption');
    const upiIdInput = document.getElementById('upiId');
    const paymentDetails = document.getElementById('paymentDetails');
    const totalAmountElement = document.getElementById('totalAmount');
    const phonepeLogo = document.getElementById('phonepeLogo');
    const paymentResult = document.getElementById('paymentResult');
    const qrCodeImage = document.getElementById('qrCode');

    scanOptionSelect.addEventListener('change', function () {
        const selectedOption = scanOptionSelect.value;
        if (selectedOption === 'scanner') {
            scannerOption.style.display = 'block';
            upiOption.style.display = 'none';
        } else {
            scannerOption.style.display = 'none';
            upiOption.style.display = 'block';
        }
    });

    window.scanToPay = function () {
        alert('Scan to Pay');
        qrCodeImage.style.display = 'block';

        // Show the QR code for 4 seconds
        setTimeout(function () {
            qrCodeImage.style.display = 'none';
            // Hide scannerOption and show paymentDetails after scanning
            scannerOption.style.display = 'none';
            paymentDetails.style.display = 'block';

            // Display the PhonePe logo
            phonepeLogo.style.display = 'block';
        }, 4000);
    };

    window.payWithUPI = function () {
        const enteredUpiId = upiIdInput.value;
        // Validate UPI ID (For simplicity, checking only for @ symbol)
        if (enteredUpiId.includes('@')) {
            // Proceed with the UPI payment
            paymentDetails.style.display = 'block';
            upiOption.style.display = 'none';
        } else {
            alert('Please enter a valid UPI ID.');
        }
    };

    window.proceedToPayment = function () {
        // Simulate payment success
        paymentDetails.style.display = 'none';
        paymentResult.innerHTML = '<img src="https://i.pinimg.com/originals/e8/06/52/e80652af2c77e3a73858e16b2ffe5f9a.gif" alt="Payment Successful">';
        paymentResult.style.display = 'block';

        // Show a return button and a generate bill button
        const returnButton = document.createElement('button');
        returnButton.textContent = 'Return';
        returnButton.onclick = function () {
            window.location.href = 'food-order.html';
        };

        const generateBillButton = document.createElement('button');
        generateBillButton.textContent = 'Generate Bill';
        generateBillButton.onclick = function () {
            window.location.href = 'bill.html';
        };

        paymentResult.appendChild(returnButton);
        paymentResult.appendChild(generateBillButton);
    };
});
