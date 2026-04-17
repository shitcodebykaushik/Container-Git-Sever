- The summary of this project is that i have built a private, containerized Git infrastructure that gives me full ownership over your source code. Instead of relying on a third-party service like GitHub, I have  created a "Mini-GitHub" that runs on my own hardware or server.


# Core 
- The Engine (Gitea): A lightweight Git server written in Go. It provides the web interface, repository management, and user authentication.

- The Guard (Nginx): Acts as a reverse proxy. It sits in front of the Git server to handle web traffic, manage SSL certificates (HTTPS), and hide the backend complexity from the user.

- The Orchestrator (Docker Compose): Ties these two services together so they can talk to each other over a private internal network while staying isolated from your host system.

