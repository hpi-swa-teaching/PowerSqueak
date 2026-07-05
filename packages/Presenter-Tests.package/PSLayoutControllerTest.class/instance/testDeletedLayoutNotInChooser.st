layout deletion tests
testDeletedLayoutNotInChooser

	| layoutName |
	layoutName := 'MyTemplate'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	self assert: (self tool layoutController slideLayoutNames includes: layoutName).
	self tool layoutController deleteLayoutNamed: layoutName.
	self deny: (self tool layoutController slideLayoutNames includes: layoutName)