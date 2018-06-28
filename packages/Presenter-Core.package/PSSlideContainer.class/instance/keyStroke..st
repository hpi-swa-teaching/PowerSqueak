events-processing
keyStroke: evt

	| shortcuts choices |
	choices := self chooseShortcutsDictionary: evt.
	shortcuts := self model presentationMode
		ifTrue: [choices first]
		ifFalse: [choices second].
		
	self in: shortcuts tryToEvaluate: evt