layout deletion tests
testDeletedLayoutNotInChooser

	| layoutName |
	layoutName := 'MyTemplate'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	self assert: (self tool slideLayoutNames includes: layoutName).
	self tool deleteLayoutNamed: layoutName.
	self deny: (self tool slideLayoutNames includes: layoutName)