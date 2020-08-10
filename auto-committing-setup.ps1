
#1.  Declare a $GitHubUsername variable with your username (this will be used to clone your forked repo)
$GitHubUsername='sloot13'

#2.  Declare a $CommitMessage variable with the value auto committed from auto-committing-setup.ps1!
$CommitMessage='auto committed from auto-committing-setup.ps1'

#3.  Declare a $PracticeRepoDir variable with the value of the path where the repo will be cloned
$PracticeRepoDir='\Users\kevinfranklin46\Documents\launchcode\PowerShell\CH9\auto-commit-example'

#4.  Clone your forked repo into a directory at the $PracticeRepoDir path
git clone "https://github.com/sloot13/powershell-practice.git" "$PracticeRepoDir"

#5.  Copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
Copy-Item "$PSCommandPath" "$PracticeRepoDir"

#6.  Change into the cloned directory ($PracticeRepoDir)
Set-Location "$PracticeRepoDir"

#7.  Add the new script file in the cloned directory to git staging
git add .

#8.  Commit the changes to the repo using the message variable ($CommitMessage)
git commit -m "$CommitMessage"

#9.  Push the local git history back to your forked repo
git push origin master
