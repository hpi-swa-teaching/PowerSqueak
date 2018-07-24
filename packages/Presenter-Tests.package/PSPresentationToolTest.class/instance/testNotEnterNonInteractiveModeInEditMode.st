presentation mode tests
testNotEnterNonInteractiveModeInEditMode
	
	self pressKey: $i at: self slideContainer center.
	self assert: self tool isInteractive equals: true