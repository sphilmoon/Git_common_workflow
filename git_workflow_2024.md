## My Successful Workflow

# clone the repository and add the remote link
git clone https://your.repository.url.git .
git remote add origin https://github.com/sphilmoon/MY_REPOSITORY.git

# verify the remote link
git remote -v

# initialize the repository and set up the remote link
git add .
git status
git commit -m "<DESCRIPTION_OF_THE_COMMIT>"
git push origin master