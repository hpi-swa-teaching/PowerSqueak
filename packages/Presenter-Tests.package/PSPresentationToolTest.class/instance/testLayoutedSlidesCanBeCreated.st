slide creation tests
testLayoutedSlidesCanBeCreated

	self presentation slideLayouts values do: [:each | self tool createSlideFromLayout: each].
	self assert: self presentation slideCount equals: (self presentation slideLayouts size + 1)