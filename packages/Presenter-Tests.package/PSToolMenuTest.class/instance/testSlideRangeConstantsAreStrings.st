menu tests
testSlideRangeConstantsAreStrings
	self assert: PSPresentationTool slideRangeDialogString isString.
	self assert: PSPresentationTool slideRangeErrorMessage isString
