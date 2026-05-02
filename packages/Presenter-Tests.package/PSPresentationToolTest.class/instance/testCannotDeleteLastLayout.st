layout deletion tests
testCannotDeleteLastLayout

	| layouts lastLayoutName |
	layouts := self presentation slideLayouts keys asArray.
	layouts allButLast do: [:each | self tool deleteLayoutNamed: each].
	lastLayoutName := self presentation slideLayouts keys anyOne.
	[self tool openDeleteLayoutChooser] valueSupplyingAnswer: lastLayoutName.
	self assert: self presentation slideLayouts size equals: 1.
	self assert: (self tool slideLayoutNames includes: lastLayoutName)