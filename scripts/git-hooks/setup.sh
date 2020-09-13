  # Git hooks folder
  GIT_HOOKS_FOLDER=.git/hooks
  ### Git hooks ####
  if [ -d "$GIT_HOOKS_FOLDER" ]; then
    # Post merge hook.
    cp scripts/git-hooks/post-merge .git/hooks/post-merge
    cp scripts/git-hooks/pre-commit .git/hooks/pre-commit
    # Make files executable.
    chmod +x .git/hooks/pre-commit .git/hooks/post-merge
  fi