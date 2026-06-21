button tests
testMenuBarButtonDataCombinesGroups

	self
		assert: self tool menuBarButtonData size
		equals: self tool dropDownMenuButtonData size + self tool topRightButtonData size
