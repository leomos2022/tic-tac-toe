# Deployment Guide - GitHub Pages

This guide will help you deploy your Tic Tac Toe game to GitHub Pages.

## Prerequisites

- A GitHub account
- Git installed on your computer
- Your tic-tac-toe game files ready

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name your repository (e.g., `vibe-tictactoe`)
5. Make it public or private (your choice)
6. Don't initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

## Step 2: Push Your Code to GitHub

Once you have your repository URL, run the setup script:

```bash
./setup-github.sh https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub details.

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on the "Settings" tab
3. Scroll down to the "Pages" section (or click "Pages" in the left sidebar)
4. Under "Source", select "Deploy from a branch"
5. Choose "main" branch and "/ (root)" folder
6. Click "Save"

## Step 4: Access Your Game

After a few minutes, your game will be available at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/
```

## Alternative Manual Setup

If you prefer to set up manually:

```bash
# Add remote origin
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Troubleshooting

- **Page not found**: Wait a few minutes for GitHub Pages to build and deploy
- **404 error**: Make sure your main file is named `index.html` in the root directory
- **Build failed**: Check that your repository is public or you have GitHub Pro for private repositories

## Custom Domain (Optional)

To use a custom domain:
1. Go to repository Settings → Pages
2. Enter your domain in the "Custom domain" field
3. Add a CNAME record pointing to `YOUR_USERNAME.github.io`
4. Check "Enforce HTTPS" if available

---

🎮 Your Tic Tac Toe game will be live on the web in no time!
