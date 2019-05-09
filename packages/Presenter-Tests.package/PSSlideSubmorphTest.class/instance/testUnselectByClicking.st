as yet unclassified
testUnselectByClicking

	self click: MouseEvent redButton at: (self morph leftCenter - (1@1)).
	self assert: self slideContainer selection equals: nil.
	self assert: self container hasHandles not