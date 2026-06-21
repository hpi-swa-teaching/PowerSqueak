shortcut tests
testCreateShortcutsFromBuildsDictionary

	| action shortcuts |
	action := [self currentSlide].
	shortcuts := self slideContainer createShortcutsFrom: { {$x. action. 'do something'} }.
	self assert: shortcuts class equals: Dictionary.
	self assert: (shortcuts at: $x) equals: action.
	self deny: (shortcuts includesKey: 'do something')
