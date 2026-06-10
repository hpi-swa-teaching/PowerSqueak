as yet unclassified
testTextEditedPreservesFontSize
	| originalSize|

	originalSize := self codeMorph selectionFontSize.
	self codeMorph textEdited: ('newCode' asText).
	self assert: self codeMorph selectionFontSize equals: originalSize