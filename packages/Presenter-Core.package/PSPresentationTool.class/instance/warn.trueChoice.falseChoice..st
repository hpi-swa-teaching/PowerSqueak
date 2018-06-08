as yet unclassified
warn: aString trueChoice: trueBlock falseChoice: falseBlock

	(UserDialogBoxMorph confirm: aString)
		ifTrue: trueBlock
		ifFalse: falseBlock