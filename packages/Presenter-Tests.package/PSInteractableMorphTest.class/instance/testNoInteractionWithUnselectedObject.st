interaction tests
testNoInteractionWithUnselectedObject
	
	self slideContainer removeSelection.
	self click: MouseEvent redButton at: self morph center.
	self assert: self interacted equals: false.
	
	self click: MouseEvent redButton at: self morph center.
	self assert: self interacted equals: true.