as yet unclassified
testAcceptDropImageFile

	| createdImages |
	createdImages := self getNew: SketchMorph createdIn: 
		[self slide 
			handleDroppedItem: PSMockByteStream newPng 
			event: (self redMouseDownAt: self slide center)].
	self assert: createdImages size equals: 1 