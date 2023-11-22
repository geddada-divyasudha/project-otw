// card.js
document.addEventListener('DOMContentLoaded', function () {
    const cardTypeSelect = document.getElementById('cardType');
    const debitCardForm = document.getElementById('debitCardForm');
    const creditCardForm = document.getElementById('creditCardForm');
    const debitProceedBtn = document.getElementById('debitProceedBtn');
    const creditProceedBtn = document.getElementById('creditProceedBtn');
    const generateBillBtn = document.getElementById('generateBillBtn');
	

    cardTypeSelect.addEventListener('change', function () {
        const selectedCardType = cardTypeSelect.value;

        debitCardForm.style.display = selectedCardType === 'debit' ? 'block' : 'none';
        creditCardForm.style.display = selectedCardType === 'credit' ? 'block' : 'none';
    });

    async function simulateProcessing() {
        // Simulate processing animation for 3 seconds
        return new Promise(resolve => {
            setTimeout(resolve, 3000);
        });
    }

    async function processPayment(cardType, name) {
        alert(`OTP has been sent to your mobile for verification.`);

        // Wait for 3 seconds
        await simulateProcessing();

        const enteredOtp = prompt('Enter OTP received on your mobile:');

        if (enteredOtp) {
            // Show celebrations animation
            alert(`Thanks for ordering, ${name}!`);

            // Show "Generate Bill" button after celebration
            generateBillBtn.style.display = 'block';
        } else {
            alert('Payment failed. Please enter a valid OTP.');
        }
    }

    // Debit Card Form
    debitProceedBtn.addEventListener('click', function () {
        const name = document.getElementById('debitName').value;
        processPayment('debit', name);
    });

    // Credit Card Form
    creditProceedBtn.addEventListener('click', async function () {
        const name = document.getElementById('creditName').value;
        alert(`OTP has been sent to your mobile for verification.`); // Alert for credit card OTP
        await simulateProcessing();
        const enteredOtp = prompt('Enter OTP received on your mobile:');

        if (enteredOtp) {
            // Show celebrations animation
            alert(`Thanks for ordering, ${name}!`);

            // Show "Generate Bill" button after celebration
            generateBillBtn.style.display = 'block';
        } else {
            alert('Payment failed. Please enter a valid OTP.');
        }
    });

    // Generate Bill Button
    generateBillBtn.addEventListener('click', function () {
        // Redirect to bill.html
        window.location.href = 'bill.html';
    });
});
