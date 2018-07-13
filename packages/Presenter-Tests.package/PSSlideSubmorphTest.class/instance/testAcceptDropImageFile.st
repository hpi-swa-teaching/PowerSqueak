submorph tests
testAcceptDropImageFile

	| oldSubMorphs createdImages |
	oldSubMorphs := self slide submorphs.
	self slide 
		handleDroppedItem: PSMockByteStream newPng 
		event: (self redMouseDownAt: self slide center).
	createdImages := (self slide submorphs difference: oldSubMorphs) 
		select: [:each | each child isKindOf: SketchMorph].
	self assert: createdImages size equals: 1 