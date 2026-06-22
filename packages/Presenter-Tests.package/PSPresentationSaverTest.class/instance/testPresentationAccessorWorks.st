accessing test
testPresentationAccessorWorks

	| aPresentation |
	aPresentation := PSPresentation new.
	self saver presentation: aPresentation.
	self assert: self saver presentation == aPresentation