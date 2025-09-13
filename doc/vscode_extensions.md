# Visual Studio Code extensions

Below you will find notes or documentation relating to VS Code extensions which
this repository relies on.

## Todo Tree

The Todo Tree extension searches the workspace for comment tags like TODO and
FIXME, and displays them in a tree view in the activity bar. See the VS Code
Marketplace,
[here](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree),
for more information and documentation.

The [.vscode/settings.json](/.vscode/settings.json) file defines customizations
to this extension for this repository, and is the source of truth for supported
tags. The use case for each tag is below.

- BUG: Tag code that doesn't function consistently
- FIXME: Tag broken code
- HACK: Tag code which works, but needs improvement
- TODO: Generalized tag for anything that needs improvement
- AUDIT: Tag code which requires a review

## EditorConfig

The EditorConfig extension attempts to override user/workspace settings with
settings found in the [.editorconfig](/.editorconfig) file. This ensures
consistency on new lines, trailing whitespace, and indentation for all users of
this workspace.
