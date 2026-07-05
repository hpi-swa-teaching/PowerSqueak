miniature view tests
testPresentOnHiddenSlide

	| slide miniature slideNumber |
	slide := self createSlide.
	miniature := self tool miniatureController miniatureOf: slide.
	
	miniature hideSlide.
	slideNumber := self currentSlideNumber.
	self tool enablePresentationMode.
	self assert: self currentSlideNumber equals: slideNumber
	