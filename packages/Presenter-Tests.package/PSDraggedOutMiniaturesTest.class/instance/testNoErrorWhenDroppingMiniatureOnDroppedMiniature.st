dragging in tests
testNoErrorWhenDroppingMiniatureOnDroppedMiniature
	
	| anotherMiniature |
	anotherMiniature := self miniatureOf: self slides first. 
	self 
		shouldnt:
			[self dragInMiniature: anotherMiniature before: self miniature]
		raise: Error.