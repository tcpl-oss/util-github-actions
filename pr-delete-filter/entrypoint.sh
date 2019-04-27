#!/bin/sh
set -e

# checks for the "deleted" value in the event.json - this appears to be true when a PR branch is deleted...
# this could be a bug in GitHub Actions - when you delete a PR branch (not master), currently the GITHUB_REF is GITHUB_REF=refs/heads/master - this means the branch filter action won't have an effect
#####

OUTPUT=$(jq --raw-output .deleted "$GITHUB_EVENT_PATH")

if [ "$OUTPUT" == false ]; then
    exit 0
fi

exit 78
