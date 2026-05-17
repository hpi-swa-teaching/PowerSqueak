layout creation tests
testDuplicateLayoutNameIsRejectedOnCreate

	| layoutName layoutCountBefore |
	layoutName := 'TestLayout'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	layoutCountBefore := self presentation slideLayouts size.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	self assert: self presentation slideLayouts size equals: layoutCountBefore