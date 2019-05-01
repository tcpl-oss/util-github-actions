#!/bin/sh
set -e
echo "checking for PR merge to master..."
if [[ "$GITHUB_EVENT_NAME" != "pull_request" ]]; then
    #action only compatible with pull_request event
    echo "This actions should only be used on a pull_request GHA workflow..."
    exit 1
fi

action=$(jq --raw-output .action "$GITHUB_EVENT_PATH")
merged=$(jq --raw-output .pull_request.merged "$GITHUB_EVENT_PATH")
base_branch=$(jq --raw-output .pull_request.base.ref "$GITHUB_EVENT_PATH")

if [[ "$action" == "closed" ]] && [[ "$merged" == "true" ]] && [[ "$base_branch" == "master" ]]; then
    exit 0
fi

exit 78
