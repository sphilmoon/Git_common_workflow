# .gitignore

Date: November 22, 2024

To delete folders on GitHub while keeping them locally and preventing future commits or updates to those folders, use a combination of **removal from the Git index** and a `.gitignore` file. 

---

### **Steps to Remove Folders from GitHub While Keeping Them Locally**

### **1. Remove the Folders from Git Tracking**

This step ensures that the folders are no longer tracked by Git, but they remain in your local filesystem.

1. Navigate to your repository root in your terminal.
2. Run the following command to remove the folders from Git's index:
    
    ```bash
    git rm -r --cached my_folder
    ```
    
3. Verify the removal by checking the `git status`:
    
    ```bash
    git status
    ```
    
    You should see that the folder is marked for removal.
    

### **2. Prevent Future Updates with a `.gitignore` File**

To prevent Git from tracking changes to these folders in the future:

1. Open or create a `.gitignore` file in the root of your repository.

    ```bash
    touch .gitignore
    ```

1. Add the folder names you want Git to ignore:
    
    ```
    my_folder/
    another_folder/
    ```
    
    Each folder name should be followed by a `/` to ensure the entire folder is ignored.
    
2. Save the `.gitignore` file.

### **3. Commit the Changes**

Commit the changes to remove the folders from Git's tracking and update the `.gitignore` file.

1. Stage the changes:
    
    ```bash
    git add .gitignore
    git add -u
    ```
    
2. Commit the changes:
    
    ```bash
    git commit -m "Removed folders from tracking and updated .gitignore"
    ```
    
3. Push the changes to GitHub:
    
    ```bash
    git push origin main
    ```
    
    Replace `<branch_name>` with your current branch, e.g., `main`.
    

---

### **Verification**

1. Check your repository on GitHub: The folders should no longer appear.
2. Check your local repository: The folders should still exist locally but will not be tracked by Git anymore.

---

### **Key Notes**

- **Why Use `-cached`?** The `-cached` flag ensures files are removed from the repository but not deleted from your local filesystem.
- **Careful with `.gitignore` Placement:** Make sure `.gitignore` is in the root of your repository to apply globally. If it's in a subfolder, it will only apply to that directory.
- **Double-Check Your Changes:** Use `git status` frequently to verify what changes will be committed.
