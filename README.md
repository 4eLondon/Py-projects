# Git Cheat Sheet

## Setup & Configuration

| Command | Description |
|---------|------------|
| `git config --global user.name "Your Name"` | Set your global Git username |
| `git config --global user.email "your@email.com"` | Set your global Git email |
| `git config --list` | List all Git configurations |
| `git config --global core.editor "editor-name"` | Set default text editor (e.g., `vim`, `nano`) |

## Repository Management

| Command | Description |
|---------|------------|
| `git init` | Initialize a new Git repository |
| `git clone <repo-url>` | Clone an existing repository |
| `git remote add origin <repo-url>` | Add a remote repository |
| `git remote -v` | List all remote repositories |
| `git remote remove <remote-name>` | Remove a remote repository |

## Basic Workflow

| Command | Description |
|---------|------------|
| `git status` | Show the working tree status |
| `git add <file>` | Stage a file for commit |
| `git add .` | Stage all changes (new/modified/deleted files) |
| `git commit -m "Commit message"` | Commit staged changes with a message |
| `git commit -am "Commit message"` | Stage & commit modified/deleted files (skips new files) |
| `git restore <file>` | Discard unstaged changes in a file |
| `git restore --staged <file>` | Unstage a file (keeps changes) |

## Branching & Merging

| Command | Description |
|---------|------------|
| `git branch` | List all local branches |
| `git branch <branch-name>` | Create a new branch |
| `git checkout <branch-name>` | Switch to a branch |
| `git checkout -b <branch-name>` | Create & switch to a new branch |
| `git merge <branch-name>` | Merge a branch into the current one |
| `git branch -d <branch-name>` | Delete a local branch |
| `git branch -D <branch-name>` | Force delete a branch (unmerged changes) |
| `git switch <branch-name>` | Switch branches (alternative to `checkout`) |

## Viewing History & Changes

| Command | Description |
|---------|------------|
| `git log` | Show commit history |
| `git log --oneline` | Compact commit history |
| `git log --graph --oneline` | Show commit history with a graph |
| `git diff` | Show unstaged changes |
| `git diff --staged` | Show staged changes |
| `git show <commit-hash>` | Show changes in a specific commit |

## Undoing Changes

| Command | Description |
|---------|------------|
| `git reset --soft <commit>` | Undo commits but keep changes staged |
| `git reset --mixed <commit>` | Undo commits and unstage changes (default) |
| `git reset --hard <commit>` | Discard all changes and commits (caution!) |
| `git revert <commit-hash>` | Create a new commit that undoes a previous commit |

## Remote & Collaboration

| Command | Description |
|---------|------------|
| `git fetch` | Download changes from remote (no merge) |
| `git pull` | Fetch and merge changes from remote |
| `git push` | Upload local commits to remote |
| `git push -u origin <branch>` | Push and set upstream branch |
| `git push --force` | Force push (use with caution) |
| `git stash` | Temporarily save uncommitted changes |
| `git stash pop` | Restore stashed changes |

## Tagging

| Command | Description |
|---------|------------|
| `git tag` | List all tags |
| `git tag <tag-name>` | Create a lightweight tag |
| `git tag -a <tag-name> -m "Message"` | Create an annotated tag |
| `git push --tags` | Push tags to remote |
| `git tag -d <tag-name>` | Delete a local tag |
