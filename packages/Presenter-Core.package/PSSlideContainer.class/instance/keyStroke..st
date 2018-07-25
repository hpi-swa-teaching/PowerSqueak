events-processing
keyStroke: evt

	| shortcuts choices |
	choices := self chooseShortcutsDictionary: evt.
	shortcuts := self isInPresentationMode
		ifTrue: [choices first]
		ifFalse: [choices second].
		
	self in: shortcuts tryToEvaluate: evt