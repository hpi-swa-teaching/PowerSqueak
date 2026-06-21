printing tests
testSlideSectionPrintStringIncludesName

	| section |
	section := PSSlideSection named: 'Intro' firstSlide: self slide.
	self assert: (section printString includesSubstring: 'Intro')
