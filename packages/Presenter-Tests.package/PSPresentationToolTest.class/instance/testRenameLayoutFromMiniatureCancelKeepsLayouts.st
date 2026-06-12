layout rename tests
testRenameLayoutFromMiniatureCancelKeepsLayouts

	| layoutName layoutCountBefore |
	layoutName := 'Cancel Rename Layout'.
	self presentation addLayout: self currentSlide duplicate withName: layoutName.
	layoutCountBefore := self presentation slideLayouts size.
	[(self miniatureOf: self currentSlide) renameLayout] valueSupplyingAnswer: nil.
	self assert: self presentation slideLayouts size equals: layoutCountBefore.
	self assert: (self tool slideLayoutNames includes: layoutName)