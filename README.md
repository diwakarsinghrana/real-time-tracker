# Real-Time Location Tracker

This application tracks and displays the real-time location of users on a map. It uses Express.js for the server, Socket.io for real-time communication, and Leaflet.js for the map interface.

## Features

- Real-time location tracking of users
- Users' locations are updated on the map as they move
- Users are removed from the map when they disconnect

## Prerequisites

- Node.js (v12 or higher)
- npm (v6 or higher)
- Docker (optional, if you want to run the application in a Docker container)

## Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/diwakarsinghrana/real-time-tracker.git
    cd real-time-tracker
    ```

2.  **Install dependencies:**

    ```bash
    npm install
    ```

3.  **Start the application:**

    ```bash
    npm start
    ```

    This will initiate the application on port 3000. Access it in your web browser at `http://localhost:3000`.

## Running the Application with Docker

Alternatively, you can choose to run the application using Docker:

1.  **Build the Docker image:**

    ```bash
    docker build -t real-time-tracker .
    ```

2.  **Run the Docker container:**

    ```bash
    docker run -p 3000:3000 real-time-tracker
    ```

    This will launch the application on port 3000. Access it in your browser at `http://localhost:3000`.