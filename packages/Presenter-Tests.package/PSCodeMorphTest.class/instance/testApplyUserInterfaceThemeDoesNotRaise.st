as yet unclassified
testApplyUserInterfaceThemeDoesNotRaise

	self shouldnt: [self codeMorph applyUserInterfaceTheme] raise: Error
