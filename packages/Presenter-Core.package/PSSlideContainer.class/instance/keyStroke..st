events-processing
keyStroke: evt

	| shortcuts |
	shortcuts := self model presentationMode
		ifTrue: [self presentationShortcuts]
		ifFalse: [self presentationCreationShortcuts].
		
	self in: shortcuts tryToEvaluate: evt
