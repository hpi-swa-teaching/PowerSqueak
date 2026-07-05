button tests
testMenuBarButtonDataCombinesGroups

	self
		assert: self tool buttonData menuBarButtonData size
		equals: self tool buttonData dropDownMenuButtonData size
			+ self tool buttonData topRightButtonData size