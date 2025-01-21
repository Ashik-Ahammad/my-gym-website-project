#My Gym Website Project

## This project containerizes a static gym website using Nginx to serve the content.

##Project Structure

my-gym-website-project/
├── Dockerfile            # Docker configuration file
├── html/                 # HTML files
│   ├── index.html
│   ├── about.html
│   └── contact.html
├── css/                  # CSS styles
│   └── styles.css
├── images/               # Images for the website
│   ├── logo.png
│   └── background.jpg
├── js/                   # JavaScript files
│   └── script.js
└── README.md             # Documentation

## Only to pull the Docker image from Docker Hub
 `docker pull ashikahammad/my-gym-website`

### How to Build and Run the Project
1. Clone the Repository
	git clone https://github.com/YOUR_USERNAME/my-gym-website-project.git

	cd my-gym-website-project

3. Build the Docker Image
	docker build -t my-gym-website .

4. 3. Run the Docker Container
	docker run -d -p 9090:80 --name my-gym-website my-gym-website

5. Access the Website
	http://localhost:9090

6. Stop and Remove the Container
	docker stop my-gym-website
	
	docker rm my-gym-website

## Dockerfile Explanation

`### Use official Nginx base image`
`FROM nginx:latest`  

`### Copy website files to Nginx HTML root directory`
`COPY html/ /usr/share/nginx/html/`
`COPY css/ /usr/share/nginx/html/css/`
`COPY images/ /usr/share/nginx/html/images/`
`COPY js/ /usr/share/nginx/html/js/`

`### Expose port 80 to serve web content`
`EXPOSE 80`

`### Start Nginx server`
`CMD ["nginx", "-g", "daemon off;"] `




