saving
accept: aText

	| blockText |
	blockText := self convertToBlockWithCurrentArguments: aText.
	(self canCompile: blockText)
		ifFalse: [^ self].
	self receiver
		setProperty: self currentMorphProperty
		toValue: blockText.
	self changed: #code
	