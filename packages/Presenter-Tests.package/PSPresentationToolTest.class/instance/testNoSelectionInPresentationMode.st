nil
testNoSelectionInPresentationMode

	| morphy |
	morphy := RectangleMorph new.
	self slides first addContent: morphy.
	self tool enablePresentationMode.
	self assert: (self tool slideContainer selection) equals: nil.
	self click: MouseEvent redButton at: morphy center.
	self assert: (self tool slideContainer selection) equals: nil.