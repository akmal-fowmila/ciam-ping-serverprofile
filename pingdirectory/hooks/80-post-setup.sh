#!/usr/bin/env sh
# This script runs after the basic setup is done but before the server starts.

echo "Running custom post-setup tasks..."

# Example: Dynamically setting a global property based on an environment variable
# ${INSTANCE_NAME} is an example of a variable injected by GKE/Harness [cite: 606]
/opt/out/instance/bin/dsconfig set-global-configuration-prop \
  --set "instance-name:${INSTANCE_NAME}" \
  --no-prompt

echo "Post-setup tasks complete."
