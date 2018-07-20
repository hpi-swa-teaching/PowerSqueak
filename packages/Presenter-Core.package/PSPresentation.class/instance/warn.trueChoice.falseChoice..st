warning
warn: aString trueChoice: trueBlock falseChoice: falseBlock

	(UIManager default confirm: aString)
		ifTrue: trueBlock
		ifFalse: falseBlock