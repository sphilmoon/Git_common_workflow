# Git v2.47.0 Common Workflow Notes

### Latest Update: October 31, 2024 by sphilmoon

---

## Working on a Local Repository

1. **Set your Git username and email**

    ```bash
    # Set Git username
    git config --global user.name "sphilmoon"
    
    # Set Git email
    git config --global user.email "sphilmoon@gmail.com"
    
    # Confirm your Git configuration
    git config --list
    ```

2. **Initialize a new Git repository**

    ```bash
    # Create a new Git repository in the current directory
    git init
    ```

3. **Check the status of your repository**

    ```bash
    # Show the current status of files in the repository
    git status
    ```

4. **Create a `.gitignore` file to specify files to be ignored**

    ```bash
    # Create a .gitignore file in the root directory
    touch .gitignore
    ```

5. **Add files to the staging area, or remove specific files from staging**

    ```bash
    # Add all files to staging
    git add .
    
    # Remove a file from staging (without deleting it)
    git rm --cached <FILE_NAME>
    ```

6. **Verify the status after staging changes**

    ```bash
    # Show which files are staged for commit
    git status
    ```

7. **Commit staged changes with a message**

    ```bash
    # Commit with a detailed description of the changes
    git commit -m "<DESCRIPTION_OF_THE_COMMIT>"
    ```

8. **View the commit history**

    ```bash
    # Display the commit history
    git log
    ```

---

## Working on a Remote Repository

1. **Clone a remote repository to your local machine**

    ```bash
    # Clone a repository from a remote URL to the current directory
    git clone https://YOUR.REPOSITORY.URL.git .
    ```

2. **Add a remote repository link**

    ```bash
    # Link your local repository to a remote repository
    git remote add origin https://github.com/sphilmoon/MY_REPOSITORY.git
    ```

3. **Verify the remote link**

    ```bash
    # Display all configured remote URLs
    git remote -v
    ```

4. **Synchronize your repository with the remote**

    ```bash
    # Pull the latest changes from the main branch of the remote repository
    git pull origin main
    ```

5. **Push changes to the remote repository**

    ```bash
    # Push local commits to the remote main branch
    git push origin main
    ```

---

## Working on a Remote Repository with Multiple Contributors

1. **Clone the repository and add the remote link**

    ```bash
    git clone https://your.repository.url.git .
    git remote add origin https://github.com/sphilmoon/MY_REPOSITORY.git
    ```

2. **Create and switch to a new branch**

    ```bash
    # Create a new branch for your changes
    git branch <NEW_BRANCH_NAME>
    
    # Switch to the new branch
    git checkout <NEW_BRANCH_NAME>
    ```

3. **Check branch status, add files to staging, and commit**

    ```bash
    git status
    git add .
    git commit -m "<DESCRIPTION_OF_THE_COMMIT>"
    ```

4. **Pull updates from the remote repository**

    ```bash
    # Update your branch with the latest changes from the remote
    git pull origin main
    ```

5. **Push your branch to the remote repository**

    ```bash
    # Push your branch to the remote repository
    git push origin <NEW_BRANCH_NAME>
    ```

6. **List all branches, merge, and delete branches as needed**

    ```bash
    # List all branches, including remote branches
    git branch -a

    # Switch to the main branch and pull the latest changes
    git checkout main
    git pull origin main

    # Merge your branch into the main branch
    git merge <NEW_BRANCH_NAME>

    # Verify merged branches and delete the local branch
    git branch --merged
    git branch -d <NEW_BRANCH_NAME>

    # Delete the branch from the remote repository
    git push origin --delete <NEW_BRANCH_NAME>
    ```

---

## My Successful Workflow

1. **Clone the repository and add the remote link**

    ```bash
    git clone https://your.repository.url.git .
    git remote add origin https://github.com/sphilmoon/MY_REPOSITORY.git
    ```

2. **Verify the remote link**

    ```bash
    # Show remote URLs for verification
    git remote -v
    ```

3. **Stage files, check the status, commit, and push**

    ```bash
    git add .
    git status
    git commit -m "<DESCRIPTION_OF_THE_COMMIT>"
    git push origin main
    ```

---

## Adding New Files to an Existing Repository

1. **Initialize the repository and set up the remote link**

    ```bash
    # Initialize the repository (if not already initialized)
    git init

    # Add a remote repository link if not already set
    git remote add origin https://github.com/sphilmoon/MY_REPOSITORY.git
    ```

2. **Verify the remote link and pull any latest changes**

    ```bash
    # Show remote URLs to confirm
    git remote -v
    
    # Pull latest changes from the remote main branch
    git pull origin main
    ```

3. **Stage new files, check the status, commit, and push**

    ```bash
    # Add specific files to staging or add all files
    git add <FILES>
    
    # Commit changes with a detailed message
    git commit -m "<DESCRIPTION_OF_THE_COMMIT>"
    
    # Push changes to the remote main branch
    git push origin main
    ```

---

## THE END
