#!/usr/bin/env zsh

echo '# File created using'\''.gitignore Generator'\''for Visual Studio Code: https://bit.ly/vscode-gig

# Created by https://www.toptal.com/developers/gitignore/api/visualstudiocode,macos
# Edit at https://www.toptal.com/developers/gitignore?templates=visualstudiocode,macos

### macOS ###
# General
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two \r
Icon

# Thumbnails
._*

# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

### VisualStudioCode ###
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json
*.code-workspace

### VisualStudioCode Patch ###
# Ignore all local history of files
.history

# End of https://www.toptal.com/developers/gitignore/api/visualstudiocode,macos

# Custom rules (everything added below won'\''t be overriden by '\''Generate .gitignore File'\'' if you use '\''Update'\'' option)

node_modules
TEMPLATE_README.md
buildTests/*
*.css' > .gitignore