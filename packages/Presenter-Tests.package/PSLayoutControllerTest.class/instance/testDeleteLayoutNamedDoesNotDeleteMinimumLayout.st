layout deletion tests
testDeleteLayoutNamedDoesNotDeleteMinimumLayout

	| layouts lastLayoutName |
	layouts := self presentation slideLayouts keys asArray.
	layouts allButLast do: [:each | self tool layoutController deleteLayoutNamed: each].
	lastLayoutName := self presentation slideLayouts keys anyOne.
	self tool layoutController deleteLayoutNamed: lastLayoutName.
	self assert: self presentation slideLayouts size equals: 1.
	self assert: (self tool layoutController slideLayoutNames includes: lastLayoutName)