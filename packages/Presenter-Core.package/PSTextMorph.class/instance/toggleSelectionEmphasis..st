styling
toggleSelectionEmphasis: anEmphasisCode
	| current |
	
	current := self selectionEmphasisCode.
	(current bitAnd: anEmphasisCode) = 0
		ifTrue: [self selectionEmphasisCode: current + anEmphasisCode]
		ifFalse: [self selectionEmphasisCode: current - anEmphasisCode]