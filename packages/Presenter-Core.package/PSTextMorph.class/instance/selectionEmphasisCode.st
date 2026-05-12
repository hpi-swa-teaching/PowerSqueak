styling
selectionEmphasisCode
	^ (self selectionAttribute: TextEmphasis)
		ifNil: [0]
		ifNotNil: [:e | e emphasisCode]