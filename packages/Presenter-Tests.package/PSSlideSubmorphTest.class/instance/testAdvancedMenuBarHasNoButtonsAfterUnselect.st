container tests
testAdvancedMenuBarHasNoButtonsAfterUnselect

	self tool removeSelection.
	self assert: self tool advancedMenuBar buttons isEmpty
	
	
