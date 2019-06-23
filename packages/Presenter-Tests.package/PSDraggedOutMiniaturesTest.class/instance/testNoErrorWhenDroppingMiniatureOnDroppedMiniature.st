as yet unclassified
testNoErrorWhenDroppingMiniatureOnDroppedMiniature
	
	| anotherMiniature |
	anotherMiniature := self miniatureOf: (self slides at:1). 
	self 
		shouldnt: [
		self dragndrop: MouseEvent redButton
		 	from: anotherMiniature boundsInWorld center 
			to: self miniature boundsInWorld center]
		raise: Error.