((magit-blame
  ("-w"))
 (magit-branch nil)
 (magit-cherry-pick nil
                    ("--ff"))
 (magit-commit nil)
 (magit-diff
  ("--no-ext-diff" "--stat"))
 (magit-dispatch nil)
 (magit-fetch nil
              ("--prune" "--tags"))
 (magit-gitignore nil)
 (magit-log
  ("-n256" "--graph" "--decorate")
  ("-n256" "-Gport-forward" "--graph" "--decorate"))
 (magit-log:-G "port-forward")
 (magit-merge nil)
 (magit-pull nil)
 (magit-push
  ("--force-with-lease"))
 (magit-rebase
  ("--autostash")
  nil)
 (magit-reset nil)
 (magit-revert
  ("--edit"))
 (magit-stash nil
              ("--include-untracked"))
 (magit-submodule nil)
 (magit-tag nil)
 (magit-worktree nil)
 (magithub-dispatch-popup nil))
