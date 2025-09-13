#!/bin/bash
set -e

# Define an array of venv targets and their corresponding packages to inject with
# space separated
declare -A venv_packages=(
    # ["ansible-core"]="pywinrm" # example if you need to support Windows servers
)

# Loop over the associative array
for venv in "${!venv_packages[@]}"; do
    packages="${venv_packages[$venv]}"

    # Check if the virtual environment exists using pipx
    if pipx list | grep -q "package $venv"; then
        echo "Injecting $packages into $venv..."
        pipx inject "$venv" $packages
    else
        echo "Skipping $venv: not installed via pipx."
    fi
done

echo "Done."
