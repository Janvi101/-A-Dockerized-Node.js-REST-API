# Cloud-Ready Node.js REST API with Docker

A simple Node.js REST API containerized with Docker, demonstrating a basic development-to-deployment workflow for **creating an application that is portable and ready for deployment to any cloud service.**

---

## 🚀 Building the API

This part of the project focuses on creating a minimal Express.js API that serves a JSON message.

### Prerequisites

* **Node.js** and **npm** installed on your local machine.

### Instructions

1.  **Set Up:** Navigate to your project directory and initialize a new Node.js project.
    ```bash
    npm init -y
    ```

2.  **Install Express:** Add the Express.js framework as a dependency.
    ```bash
    npm install express
    ```

3.  **Create the Application:** The application code is in `index.js`. It sets up a simple **GET endpoint at the root (`/`)**.

4.  **Run Locally:** Start the application and test it in your browser.
    ```bash
    node index.js
    ```
    *Visit `http://localhost:3000` to see the JSON response.*

---

## 📦 Containerizing with Docker

This phase involves creating a **Dockerfile** to package the application and its dependencies into a Docker image, making it easy to run anywhere.

### Prerequisites

* **Docker Desktop** installed.

### Instructions

1.  **Create the Dockerfile:** The `Dockerfile` provides instructions for building the image, including setting up the environment, installing dependencies, and exposing the application port.

2.  **Build the Image:** Run the following command in your terminal from the project's root directory.
    ```bash
    docker build -t my-node-app .
    ```

3.  **Run the Container:** Launch the container and map the container's internal port (`3000`) to a port on your local machine (`8080`).
    ```bash
    docker run -p 8080:3000 my-node-app
    ```
    *The application will now be accessible at `http://localhost:8080`.*

---

## 📂 Project Structure
├── node_modules/
├── Dockerfile
├── index.js
├── package.json
├── package-lock.json
└── README.md

---

## 📜 License

This project is open source and available under the **MIT License**.
