#!/bin/bash

# GitHub Repository Setup Script for Tic Tac Toe Game
# Replace YOUR_USERNAME and YOUR_REPO_NAME with your actual GitHub details

echo "🚀 Setting up GitHub repository for Tic Tac Toe Game"
echo ""

# Check if repository URL is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide the GitHub repository URL"
    echo "Usage: ./setup-github.sh https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
    echo ""
    echo "Example: ./setup-github.sh https://github.com/leomos2022/vibe-tictactoe.git"
    exit 1
fi

REPO_URL=$1
REPO_NAME=$(basename -s .git $REPO_URL)

echo "📁 Repository URL: $REPO_URL"
echo "📁 Repository Name: $REPO_NAME"
echo ""

# Add remote origin
echo "🔗 Adding remote origin..."
git remote add origin $REPO_URL

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo ""

# Instructions for GitHub Pages
echo "🌐 To deploy on GitHub Pages:"
echo "1. Go to your repository: $REPO_URL"
echo "2. Click on 'Settings' tab"
echo "3. Scroll down to 'Pages' section"
echo "4. Under 'Source', select 'Deploy from a branch'"
echo "5. Choose 'main' branch and '/ (root)' folder"
echo "6. Click 'Save'"
echo ""
echo "Your game will be available at: https://YOUR_USERNAME.github.io/$REPO_NAME/"
echo ""

echo "🎮 Your Tic Tac Toe game is now on GitHub and ready for deployment!"
