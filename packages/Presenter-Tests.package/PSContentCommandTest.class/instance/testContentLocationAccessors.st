accessor tests
testContentLocationAccessors
	| location |
	location := PSContentLocation new.
	location slide: #aSlide; index: 7; layoutFrame: #aFrame.
	self assert: location slide equals: #aSlide.
	self assert: location index equals: 7.
	self assert: location layoutFrame equals: #aFrame
