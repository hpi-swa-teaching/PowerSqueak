notifications
warn: aString trueChoice: trueBlock falseChoice: falseBlock

	(UIManager default confirm: aString)
		ifTrue: [trueBlock value]
		ifFalse: [falseBlock value]