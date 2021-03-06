event tests
testAcceptDropImageFile

	| oldSubMorphs createdImages |
	oldSubMorphs := self slide submorphs.
	
	self slide 
		handleDroppedItem: PSMockByteStream newPng 
		event: (UserInputEvent new setPosition: self slide center).
		
	createdImages := (self submorphs difference: oldSubMorphs).
	
	self assert: createdImages size equals: 1.
	createdImages do: [:each |
		self assert: (each content isKindOf: SketchMorph)]