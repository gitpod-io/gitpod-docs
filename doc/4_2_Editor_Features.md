# Editor Features

In the following, we describe a set of useful editor features. They are usually provided by the Language Server and may not be available for all languages.

### Format Document

You can select `Format Document` from the context menu to tidy up your code.
If you want to format only a subsection of the current document, select the desired region and pick `Format Selection` from the editor's context menu.

### Rename Symbol

Use `Rename Symbol` from the editor's context menu if you want to do a rename refactoring and pick another name for a symbol. Click on the symbol and specify the new name. You can access this functionality by pressing <kbd>F2</kbd> from the keyboard.

### Go to Type Definition

Use `Go to Type Defintion` command from the editor's context menu or from the Command Palette to jump to the type defintion of a symbol.

### Go to Implementation

With the `Go to Implementation` command from the Command Palette or from the context menu within the editor you can navigate to the implementation of a symbol. Still, the fastest way is the <kbd>Ctrl</kbd>+<kbd>F12</kbd> keybinding. If the symbol is an interface, it shows the implementors of the selected interface, if the symbol is an abstract method, it will show all concrete implementations.


### Go to Definition

You can jump to the definition of a symbol by pressing <kbd>F12</kbd>.
If you press </kbd>Ctrl</kbd> (<kbd>⌘</kbd> on macOS) and hover over a symbol, a preview of the declaration will appear. So there is not need to open the definition in a new editor.

### Peek Definition

This command is very similar to `Go to Definition`, but instead of jumping to the defintion which might be in a different file, it opens up an inline editor.

### Find All Refeferences

Use `Find All References` to collect all the references for a selected symbol. It shows the references in an inline editor.