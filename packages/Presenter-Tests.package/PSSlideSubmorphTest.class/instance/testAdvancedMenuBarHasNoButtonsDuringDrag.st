container tests
testAdvancedMenuBarHasNoButtonsDuringDrag

	self selectContainer.
	self click: MouseEvent redButton at: self morph center.
	self assert: self tool advancedMenuBarButtons isEmpty
	
	
