#!/bin/bash

# Get directory
MAINDIR="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")drive_c"

# Update Release
cd "$MAINDIR/Release"
git fetch origin
git reset --hard origin/main

# Update Prerelease
cd "$MAINDIR/Prerelease"
git fetch origin
git reset --hard origin/main

# Update maps/other repo
cd "$MAINDIR/Starcraft/Maps/CMBW-Root"
git fetch origin
git reset --hard origin/main

# Update CrownLink
curl -LO "https://github.com/impromptu1583/CrownLink/releases/latest/download/CrownLink.snp"
