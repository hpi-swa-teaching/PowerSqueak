accessing
testLayoutedSlidesCreation
	"Assure that layout creation does not throw an error."
	self presentation slideLayouts values do: [:each | self tool createSlideFromLayout: each value].
	self assert: self presentation slideCount equals: (self presentation slideLayouts size + 1)