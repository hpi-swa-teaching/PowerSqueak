slide management
updateSelection: aPSContentContainer

	| buttonSpecs buttonDictionaries |
	buttonDictionaries := aPSContentContainer menuBarItems.
	self setFrames: buttonDictionaries.
	buttonSpecs := buttonDictionaries collect: [:each | self createButtonSpec: each with: self advancedMenuBar toolBuilder].
	self advancedMenuBar showButtons: buttonSpecs.