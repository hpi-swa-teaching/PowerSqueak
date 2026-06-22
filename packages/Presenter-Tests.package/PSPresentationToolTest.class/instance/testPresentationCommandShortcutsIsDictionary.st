shortcut tests
testPresentationCommandShortcutsIsDictionary

	| shortcuts |
	shortcuts := self slideContainer presentationCommandShortcuts.
	self assert: shortcuts class equals: Dictionary.
	self assert: (shortcuts includesKey: $t)
