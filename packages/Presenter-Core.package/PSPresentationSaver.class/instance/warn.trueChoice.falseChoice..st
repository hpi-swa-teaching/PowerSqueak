ui
warn: aString trueChoice: trueBlock falseChoice: falseBlock

	(UIManager default confirm: aString) = true
		ifTrue: trueBlock
		ifFalse: falseBlock