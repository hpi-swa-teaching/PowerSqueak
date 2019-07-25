events-processing
filterEvent: anEvent for: aMorphOrNil
	
	self model isInteractive
		ifFalse: [ | shortcuts |
			shortcuts := self shortcutsFor: anEvent.
			(anEvent isKeyboard and: [anEvent isKeystroke])
				ifTrue: [self in: shortcuts tryToEvaluate: anEvent].
			 anEvent ignore].
	^ anEvent