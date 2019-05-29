as yet unclassified
defaultActions

	self slide isHidden 
		ifTrue: [^ {self unhideData}] 
		ifFalse: [^ {self hideData}]
	