# launch-ghost-cms-site

Launch a Ghost CMS Website using Docker onto an Ubuntu server for production! Includes Let's Encrypt for HTTPS

### 1. Replace all _example.com_ instances with your domain

### 2. Install Certbot to request and download a free certificate from [Let's Encrypt](https://letsencrypt.org/)

-   `sudo apt install software-properties-common`
-   `sudo add-apt-repository ppa:certbot/certbot`
-   `sudo apt update`
-   `sudo apt install certbot`
-   `sudo certbot certonly --standalone -d yourdomain.com`

### 3. Run your ghost application

-   `docker-compose up -d`

### 4. Create your account

-   Visit `https://yourdomain.com/ghost`
-   Enter your email, full name, password, and blog title
