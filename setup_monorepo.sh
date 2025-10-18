#!/bin/bash

# Script to clone JAX-related repositories and set up monorepo structure
# This script clones repositories from jax-ml organization and removes their .git directories

set -e

echo "Setting up JAX monorepo..."

# List of repositories to clone (without the github.com/jax-ml/ prefix)
REPOS=(
    "jax"
    "jax-tpu-embedding"
    "jax-ai-stack"
    "bonsai"
    "jax-triton"
    "ml_dtypes"
    "oryx"
    "scaling-book"
    "jax-llm-examples"
    "coix"
    "bayeux"
    ".allstar"
    "australis"
    ".github"
)

BASE_URL="https://github.com/jax-ml"

# Create a directory for the cloned repositories if it doesn't exist
mkdir -p repos

cd repos

# Clone each repository
for repo in "${REPOS[@]}"; do
    echo "Cloning $repo..."
    
    # Skip if directory already exists
    if [ -d "$repo" ]; then
        echo "Directory $repo already exists, skipping clone..."
        continue
    fi
    
    # Clone the repository
    git clone "$BASE_URL/$repo.git" "$repo"
    
    # Remove the .git directory to integrate into monorepo
    if [ -d "$repo/.git" ]; then
        echo "Removing .git directory from $repo..."
        rm -rf "$repo/.git"
    fi
    
    echo "Successfully processed $repo"
done

cd ..

echo "Monorepo setup complete!"
echo "All repositories have been cloned to the 'repos/' directory with .git directories removed."