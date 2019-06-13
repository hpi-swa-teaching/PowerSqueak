as yet unclassified
hideButtonData

	self slide isHidden 
		ifTrue: [^ self unhideData] 
		ifFalse: [^ self hideData]