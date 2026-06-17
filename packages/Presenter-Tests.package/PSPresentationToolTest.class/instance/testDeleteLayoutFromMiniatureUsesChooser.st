layout deletion tests
testDeleteLayoutFromMiniatureUsesChooser

	| layoutName |
	layoutName := 'Delete From Miniature'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	[(self miniatureOf: self currentSlide) deleteLayout] valueSupplyingAnswer: layoutName.
	self deny: (self tool slideLayoutNames includes: layoutName)