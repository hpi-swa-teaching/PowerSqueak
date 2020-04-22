dragging in tests
testDraggingInAfterMiniature

	| firstMiniature |
	firstMiniature := self miniatureOf: self slides first.
	self world doOneCycle.
	self dragInMiniature: self miniature after: firstMiniature.
	
	self assert: self slides second equals: self slide.