slide creation tests
testSavingSlideAsLayoutAddsALayoutOfCorrectName

	| name |
	name := 'TestLayout'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: name.
	self assert: (self tool layoutController slideLayoutNames includes: name)