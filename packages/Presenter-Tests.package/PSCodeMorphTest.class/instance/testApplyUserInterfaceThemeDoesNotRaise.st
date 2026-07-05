code morph tests
testApplyUserInterfaceThemeDoesNotRaise

	self shouldnt: [self codeMorph applyUserInterfaceTheme] raise: Error
