####################### SSH KEY FOR GIT ###################################
eval `ssh-agent -s` && ssh-add -k
####################### To be added to git account settings ################


#Git Parameter
export GIT_PARENT_DIR=~
export GIT_REPO_NAME=gitjupyter
export GIT_BRANCH_NAME=master
export GIT_USER=sabata1984
export GIT_EMAIL=Emal
export GITHUB_ACCESS_TOKEN= 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
export GIT_USER_UPSTREAM=sbata1984

############################################################################
#### DO NOT EDIT BELOW THIS LINE: derived variables
############################################################################

export GIT_REMOTE_URL=git@github.com:$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_URL_HTTPS=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_UPSTREAM=$GIT_USER_UPSTREAM/$GIT_REPO_NAME


####################### Git Repo where notebooks will be pushed ############
cd $GIT_PARENT_DIR && git clone $GIT_REMOTE_URL_HTTPS



####################### Change in jupyter config ###########################
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then jupyter notebook --generate-config
fi

echo 'c.NotebookApp.disable_check_xsrf = True' >> ~/.jupyter/jupyter_notebook_config.py

cp $GIT_PARENT_DIR/githubcommit/config ~/.ssh/config
