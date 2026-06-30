tests boarder
testBorderColorIsIndependentOfFillColor

	| content |
	content := self aContainerOnSlide content.
	content
		color: Color red;
		borderColor: Color blue.
	self assert: content color equals: Color red.
	self assert: content borderColor equals: Color blue