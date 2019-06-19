as yet unclassified
testDraggingInAfterMiniature

	| firstSlide firstMiniature |
	firstSlide := self slides at: 1.
	firstMiniature := self miniatureOf: firstSlide.
	self world doOneCycle.
	self dragndrop: MouseEvent redButton
		from: self miniature boundsInWorld center
		to: (firstMiniature boundsInWorld center + (0@5)).
	
	self assert: (self slides at: 2) equals: self slide.