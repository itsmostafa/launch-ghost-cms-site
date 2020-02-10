# launch-ghost-cms-site

Launch a Ghost CMS Website using Docker onto an Ubuntu 18.04 server for production! Includes Let's Encrypt for HTTPS

### 1. Replace all _example.com_ instances with your domain

### 2. Install Docker, Nginx, Let's Encrypt and enable Firewalls on your Ubuntu server

-   `make start`

### 2. Run your ghost application

-   `make up`

### 3. Set up Nginx configuration

-   `cp ./etc/nginx/default.conf /etc/nginx/sites-available/ghost`
-   `sudo ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/`
-   `sudo nginx -t`
-   `sudo systemctl restart nginx`

### 4. Install Certbot to request and download a free certificate from [Let's Encrypt](https://letsencrypt.org/)

-   `sudo certbot --nginx -d example.com -d www.example.com`
-   Recommended: use option 2; automatic redirect

### 4. Create your account

-   Visit `https://example.com/ghost`
-   Enter your email, full name, password, and blog title

## To get Ghost updates:

-   `make update`
-   Note: to recieve recurring updates, you may want to add this command as a crontab task
