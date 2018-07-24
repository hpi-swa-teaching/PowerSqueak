event tests
testAcceptDropImageFile

	| oldSubMorphs createdImages |
	oldSubMorphs := self slide submorphs.
	self slide 
		handleDroppedItem: PSMockByteStream newPng 
		event: (UserInputEvent new setPosition: self slide center).
	createdImages := (self slide submorphs difference: oldSubMorphs) 
		select: [:each | each content isKindOf: SketchMorph].
	self assert: createdImages size equals: 1 