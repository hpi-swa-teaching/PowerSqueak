slide management
updateSelection: aPSContentContainer

	| buttonSpecs buttonDictionaries |
	buttonDictionaries := aPSContentContainer menuBarItems.
	buttonDictionaries := buttonDictionaries reject: [:each | each at: #noButton ifAbsent: [false]].
	self setFrames: buttonDictionaries.
	buttonSpecs := buttonDictionaries collect: [:each | self createButtonSpec: each with: self toolBuilder].
	self showButtons: buttonSpecs.
	self changed: #advancedMenuBarButtons