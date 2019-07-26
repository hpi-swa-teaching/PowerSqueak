selection tests
testSelectByClicking
	
	self click: MouseEvent redButton at: (self morph boundsInWorld center).
	self assert: self slideContainer selection equals: self container.
	self assert: self container borderColor equals: PSContentContainer borderColor.
	self assert: self container hasHandles