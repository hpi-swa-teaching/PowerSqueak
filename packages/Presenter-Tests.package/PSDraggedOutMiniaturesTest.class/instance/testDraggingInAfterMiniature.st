as yet unclassified
testDraggingInAfterMiniature

	| firstSlide firstMiniature |
	firstSlide := self slides at: 1.
	firstMiniature := self miniatureOf: firstSlide.
	self world doOneCycle.
	self dragInMiniature: self miniature after: firstMiniature.
	
	self assert: (self slides at: 2) equals: self slide.