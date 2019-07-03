as yet unclassified
testDraggingOutMiniatureRemovesSlide

	| theSlide |
	theSlide := self slides at: 1.
	self dragOutMiniature: (self miniatureOf: theSlide).
	self deny: (self slides includes: theSlide).