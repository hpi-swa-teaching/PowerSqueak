shortcut tests
testPresentationCreationCommandShortcutsIsDictionary

	| shortcuts |
	shortcuts := self slideContainer presentationCreationCommandShortcuts.
	self assert: shortcuts class equals: Dictionary.
	self assert: (shortcuts includesKey: $i).
	self assert: (shortcuts includesKey: $t)
