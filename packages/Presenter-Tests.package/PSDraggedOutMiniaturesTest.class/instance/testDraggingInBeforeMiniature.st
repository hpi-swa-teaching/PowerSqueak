dragging in tests
testDraggingInBeforeMiniature

	| firstMiniature |
	firstMiniature := self miniatureOf: self slides first.
	self world doOneCycle.
	self dragInMiniature: self miniature before: firstMiniature.
	
	self assert: self slides first equals: self slide.