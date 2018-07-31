# Editor Features

In the following we describe a set of useful editor features. They are usually provided by the *language server* and may not be available for all languages.

### Format Document

You can select `Format Document` from the context menu to tidy up your code.
If you want to format only a subsection of the current document, select the desired region and pick `Format Selection` from the editor's context menu.

### Rename Symbol

Use `Rename Symbol` from the editor's context menu if you want to do a renaming refactoring. You can invoke this command also by pressing <kbd>F2</kbd>.

### Go to Type Definition

Choose `Go to Type Definition` command from the editor's context menu or from the command palette to jump to the type definition of a symbol.

### Go to Implementation

With the `Go to Implementation` command from the editor's context menu or from the command palette you can navigate to the implementation of a symbol. Alternatively, you can press <kbd>Ctrl+F12</kbd>. If the symbol is an interface, its implementors are shown; if the symbol is an abstract method, all its implementations will be listed.

### Go to Definition

You can jump to the definition of a symbol by pressing <kbd>F12</kbd>.
If you press </kbd>Ctrl</kbd> (<kbd>⌘</kbd> on macOS) and hover over a symbol, a preview of its definition will appear. So there is no need to open the definition in a new editor.

### Peek Definition

This command is very similar to `Go to Definition`, but instead of jumping to the definition, which might be in a different file, the definition is opened in an inline editor.

### Find All References

Use `Find All References` to list all the references to a selected symbol in an inline editor.
