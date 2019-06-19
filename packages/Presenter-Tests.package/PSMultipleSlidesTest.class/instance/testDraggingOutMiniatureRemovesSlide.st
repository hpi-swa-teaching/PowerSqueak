nil
testDraggingOutMiniatureRemovesSlide

	| theSlide |
	theSlide := self slides at: 1.
	self dragndrop: MouseEvent redButton
		from: (self miniatureOf: theSlide) boundsInWorld center
		to: (self window topLeft + (-10 @ -10)).
	self deny: (self slides includes: theSlide).