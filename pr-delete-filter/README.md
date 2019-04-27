# PR Branch Delete Action
This may only be required temporarily. Possible bug in Github actions. When you delete a PR branch (not master) in Github Web UI, currently the GITHUB_REF github action env variable is GITHUB_REF=refs/heads/master - this means the branch filter (set as master) action won't have an effect and will execute the full pipeline unintentionally.

Note, this action doesn't really belong here as this is for Terraform Actions. May move if needed.