code morph tests
testSelectionFontSizeUpdatesRunButton
	| newSize |
 
	newSize := 15.
	self codeMorph selectionFontSize: newSize.
	self assert: self codeMorph runButton fontSize
		equals: newSize * self codeMorph textScale