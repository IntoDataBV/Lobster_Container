# Lobster docker installation Guide

## 🚀 Getting Started

### 1. Install Docker & Docker Compose

Please follow the instruction to Install Docker: https://medium.com/@piyushkashyap045/comprehensive-guide-installing-docker-and-docker-compose-on-windows-linux-and-macos-a022cf82ac0b

Docker docs in case the article is behind a pay wall https://docs.docker.com/desktop/setup/install/windows-install/
This contains instructions for an interactive install or using the CLI.

### 2. Clone the Repository

🧭 1. Prerequisites

Before you start, make sure you have:

A GitHub account (sign up here
).

Git installed on your machine (git --version to check).

Optional: SSH key added to your GitHub account (recommended if you use SSH).

🚀 2. Fork the repository

Go to the original repository on GitHub https://github.com/IntoDataBV/Lobster_Container

In the top right corner, click the “Fork” button.

Choose where to fork it (your personal account or an organization).

GitHub creates a new repository under your account:
→ https://github.com/<your-username>/<repo-name>

You now have your own independent copy of the project.

💻 3. Clone your fork locally

To work on your fork, clone it to your computer:

git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>

### Optional
please follow these steps if want to keep up-to-date with the project

A. Add the original repository as a remote

This helps you keep your fork up to date with the upstream project:

git remote add upstream https://github.com/<original-owner>/<repo-name>.git


Verify your remotes:

git remote -v


You should see:

origin    https://github.com/<your-username>/<repo-name>.git (fetch)
origin    https://github.com/<your-username>/<repo-name>.git (push)
upstream  https://github.com/IntoDataBV/Lobster_Container.git (fetch)
upstream  https://github.com/IntoDataBV/Lobster_Container.git (push)

B. Keep your fork up to date

To sync with the latest changes from the original repo:

git fetch upstream
git checkout main
git merge upstream/main


Or using rebase (cleaner history):

git fetch upstream
git rebase upstream/main


Then push to your fork:

git push origin main

### 3. Downloading Lobster Bridge

Go to your Lobster Data Platform. On the top right hand corner download the linux version
of the lobster bridge zip file.

Move the zip into github repo directory and make sure it is named "lobsterBridge.zip"
this is how the Lobster Bridge is named within the dockerfile, any other names will throw an error.

### 4. Running the docker-compose

```bash
docker-compose up -d
```

It then be exposed to the ip address of the host run,
`http://<ip>:443/bridge`

Then it'll be ready for setup. 