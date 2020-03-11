#!/bin/zsh
git add .
git status
echo "Confirm commit and push? Y/N"
read confirm
if  [ "$confirm" = "Y" ] || [ "$confirm" = "y" ]
then
    git commit -m "Update" || echo "Commit failed"
    git push origin head || echo "Push failed"
else
    git reset
    echo "Git reset"
fi