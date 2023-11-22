<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
  <style>
    /* Custom CSS for the bill receipt */
    #bill-receipt {
      margin: 50px auto;
      width: 500px;
      background-color: #f8f9fa;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
      opacity: 0;
    }
  </style>
</head>
<body>
  <div class="container-fluid">
    <button id="return-button" class="btn btn-secondary mb-3 mt-3">Return</button>
    <div id="bill-receipt">
      <h2>Bill Receipt</h2>
      <div>
        <label>ID:</label>
        <span id="id"></span>
      </div>
      <div>
        <label>Name:</label>
        <span id="name"></span>
      </div>
      <div>
        <label>Phone Number:</label>
        <span id="phone_number"></span>
      </div>
      <div>
        <label>Number of Guests:</label>
        <span id="num_of_guests"></span>
      </div>
      <div>
        <label>Check-in Date:</label>
        <span id="checkin_date"></span>
      </div>
      <div>
        <label>Destination:</label>
        <span id="destination"></span>
      </div>
      <div>
        <label>Status:</label>
        <span id="status"></span>
      </div>
      <div>
        <label>City ID:</label>
        <span id="city_id"></span>
      </div>
      <div>
        <label>User ID:</label>
        <span id="user_id"></span>
      </div>
      <div>
        <label>Payment:</label>
        <span id="payment"></span>
      </div>
      <div>
        <label>Created At:</label>
        <span id="created_at"></span>
      </div>
    </div>
  </div>

  <script>
    // jQuery code to fetch MySQL data and display in bill receipt dynamically
    $(document).ready(function() {
      // Fetch data from MySQL and populate the bill receipt
      $.ajax({
        url: 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=wooxtravel&table=bookings', // Replace with your PHP file to fetch data from MySQL
        type: 'POST',
        data: { id: 1 }, // Replace with the desired booking ID
        dataType: 'json',
        success: function(data) {
          // Populate the bill receipt with retrieved data
          $('#id').text(data.id);
          $('#name').text(data.name);
          $('#phone_number').text(data.phone_number);
          $('#num_of_guests').text(data.chooseGuests);
          $('#checkin_date').text(data.checkin_date);
          $('#destination').text(data.destination);
          $('#status').text(data.status);
          $('#city_id').text(data.city_id);
          $('#user_id').text(data.user_id);
          $('#payment').text(data.payment);
          $('#created_at').text(data.created_at);
        },
        error: function() {
          // Handle error if any
          console.log('Error: Failed to fetch data from MySQL.');
        }
      });

      // Animate the bill receipt using GSAP animation library
      gsap.fromTo(
        '#bill-receipt',
        { opacity: 0, y: -20 },
        { opacity: 1, y: 0, duration: 1, ease: 'power1.out' }
      );

      // Return button click event handler
      $('#return-button').click(function() {
        // Animate the bill receipt disappearance
        gsap.to('#bill-receipt', { opacity: 0, y: 20, duration: 1, ease: 'power1.in' })
          .then(() => {
            // Redirect to another page
            window.location.href = 'index.php'; // Replace with your desired page URL
          });
      });
    });
  </script>
</body>
</html>