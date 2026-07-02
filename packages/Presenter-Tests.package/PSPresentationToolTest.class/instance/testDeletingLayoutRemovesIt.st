layout deletion tests
testDeletingLayoutRemovesIt

	| layoutName layoutCountBefore |
	layoutName := 'TestLayout'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	layoutCountBefore := self presentation slideLayouts size.
	self tool layoutController deleteLayoutNamed: layoutName.
	self assert: self presentation slideLayouts size equals: layoutCountBefore - 1.
	self deny: (self tool layoutController slideLayoutNames includes: layoutName)