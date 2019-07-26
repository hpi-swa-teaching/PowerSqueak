saving
accept: aText

	| blockText |
	blockText := self convertToBlockWithCurrentArguments: aText.
	(self canCompile: blockText)
		ifFalse: [^ self].
	self setCurrentMorphPropertyTo: blockText.
	