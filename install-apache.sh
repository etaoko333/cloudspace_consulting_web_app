#!/bin/bash

# Update all yum package repositories
yum update -y

# Install Apache Web Server
yum install -y httpd.x86_64

# Start and Enable Apache Web Server
systemctl start httpd.service
systemctl enable httpd.service

# Install epel for easy access to commonly used packages
amazon-linux-extras install epel -y

# Install stress tool for testing EC2 Instance under stress workloads
yum install stress -y

# Create index.html with custom webpage HTML code
cat <<EOL > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Cloudspace Consulting</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to Cloudspace Consulting!</h1>
        <img src="cloud_image.jpg" alt="Cloud Services" class="hero-image">
        <p>Your trusted partner in cloud solutions, dedicated to helping you navigate the digital landscape with ease.</p>
        <p>We specialize in providing scalable, secure, and efficient cloud services tailored to your unique business needs.</p>
        <p>For inquiries about our cloud job offerings, feel free to <a href="mailto:contact@cloudspaceconsulting.com">contact us</a>. Thank you for choosing us!</p>
    </div>
</body>
</html>
EOL

# Create styles.css for custom styling
cat <<EOL > /var/www/html/styles.css
body {
    background-color: #e0f7fa; /* Light blue background */
    font-family: Arial, sans-serif;
    color: #333;
    margin: 0;
    padding: 0;
}

.container {
    text-align: center;
    padding: 50px;
}

h1 {
    color: #0073e6; /* Blue color for the heading */
    font-size: 2.5em;
}

.hero-image {
    width: 80%; /* Responsive image */
    max-width: 600px; /* Maximum width for larger screens */
    border-radius: 15px; /* Rounded corners */
    margin: 20px 0; /* Spacing above and below the image */
}

p {
    font-size: 1.2em;
    margin: 10px 0; /* Spacing between paragraphs */
}
EOL

# Install SSM Agent (for AWS Systems Manager)
yum install -y amazon-ssm-agent

# Enable and Start SSM Agent
systemctl enable amazon-ssm-agent
systemctl start amazon-ssm-agent