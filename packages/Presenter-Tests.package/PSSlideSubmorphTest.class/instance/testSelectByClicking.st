as yet unclassified
testSelectByClicking
	
	self click: MouseEvent redButton at: (self morph center).
	self assert: self slideContainer selection equals: self container.
	self assert: self container hasHandles