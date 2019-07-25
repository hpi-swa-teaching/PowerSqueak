as yet unclassified
testNoErrorWhenDroppingMiniatureOnDroppedMiniature
	
	| anotherMiniature |
	anotherMiniature := self miniatureOf: (self slides at:1). 
	self 
		shouldnt:
			[self dragInMiniature: anotherMiniature before: self miniature]
		raise: Error.