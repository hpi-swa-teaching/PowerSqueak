as yet unclassified
testResultPanelHeightChangesWithFontSize
	| originalHeight |

	originalHeight := self codeMorph resultPanelHeight.
	self codeMorph changeFontSize: self codeMorph selectionFontSize * 2.
	self assert: self codeMorph resultPanelHeight > originalHeight