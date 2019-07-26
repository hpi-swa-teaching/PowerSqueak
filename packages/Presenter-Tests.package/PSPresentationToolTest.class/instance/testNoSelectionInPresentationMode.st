presentation mode tests
testNoSelectionInPresentationMode

	| morphy |
	morphy := RectangleMorph new.
	self slides first addContent: morphy.
	self tool enablePresentationMode.
	self assert: self tool slideContainer selection class equals: PSNullContentContainer.
	self click: MouseEvent redButton at: morphy center.
	self assert: self tool slideContainer selection class equals: PSNullContentContainer.