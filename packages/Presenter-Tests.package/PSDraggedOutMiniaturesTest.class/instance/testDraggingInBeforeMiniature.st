as yet unclassified
testDraggingInBeforeMiniature

	| firstSlide firstMiniature |
	firstSlide := self slides at: 1.
	firstMiniature := self miniatureOf: firstSlide.
	self world doOneCycle.
	self dragInMiniature: self miniature before: firstMiniature.
	
	self assert: (self slides at: 1) equals: self slide.