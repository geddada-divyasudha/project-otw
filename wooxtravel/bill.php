<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php
// Retrieve bookings data from the database
$sql = "SELECT * FROM bookings";
$result = $conn->query($sql);

// Check if there are any bookings
if ($result->num_rows > 0) {
    // Display bill header
    echo "<h1>Booking Bill</h1>";
    echo "<table>";
    echo "<tr><th>ID</th><th>Name</th><th>Phone Number</th><th>Number of Guests</th><th>Check-in Date</th><th>Destination</th><th>Status</th><th>City ID</th><th>User ID</th><th>Payment</th><th>Created At</th></tr>";

    // Display each booking row
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"] .
             "</td><td>" . $row["name"] .
             "</td><td>" . $row["phone_number"] .
             "</td><td>" . $row["num_of_geusts"] .
             "</td><td>" . $row["checkin_date"] .
             "</td><td>" . $row["destination"] .
             "</td><td>" . $row["status"] .
             "</td><td>" . $row["city_id"] .
             "</td><td>" . $row["user_id"] .
             "</td><td>" . $row["payment"] .
             "</td><td>" . $row["created_at"] .
             "</td></tr>";
    }

    // Display bill footer
    echo "</table>";

    // Display return button
    echo "<br><a href='index.php'>Return</a>";
} else {
    // Display message if there are no bookings
    echo "No bookings found";
}

// Close the database connection
$conn->close();

?>
<?php require "includes/footer.php"; ?>
