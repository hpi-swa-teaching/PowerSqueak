as yet unclassified
testChangeFontSizeUpdatesRunButtonFontSize
	| newSize |

	newSize := 20.
	self codeMorph changeFontSize: newSize.
	self assert: self codeMorph runButton fontSize
		equals: newSize * self codeMorph textScale