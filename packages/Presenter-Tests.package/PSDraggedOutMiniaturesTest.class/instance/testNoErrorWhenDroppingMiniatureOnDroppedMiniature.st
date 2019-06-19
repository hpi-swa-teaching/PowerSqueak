as yet unclassified
testNoErrorWhenDroppingMiniatureOnDroppedMiniature
	"this tests whether an error is thrown, in which case the test fails"
	| anotherMiniature |
	anotherMiniature := self miniatureOf: (self slides at:1). 
	self dragndrop: MouseEvent redButton
	 	from: anotherMiniature boundsInWorld center 
		to: self miniature boundsInWorld center.