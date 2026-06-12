layout deletion tests
testOpenDeleteLayoutChooserDeletesSelectedLayout

	| layoutName layoutCountBefore |
	layoutName := 'Delete Through Chooser'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: layoutName.
	layoutCountBefore := self presentation slideLayouts size.
	[self tool openDeleteLayoutChooser] valueSupplyingAnswer: layoutName.
	self assert: self presentation slideLayouts size equals: layoutCountBefore - 1.
	self deny: (self tool slideLayoutNames includes: layoutName)