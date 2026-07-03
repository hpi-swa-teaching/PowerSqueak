exporting
exportSelectedAsPNGs

	| indices |
	self tool
		askForInputWithQuestion: PSPresentationTool slideRangeDialogString
		withInitial: '1-' , self tool presentation slideCount asString
		andDo: [:input |
			indices := (PSSlideRangeParser for: self tool presentation slideCount)
				indicesFrom: input]
		onError: PSPresentationTool slideRangeErrorMessage.
	(indices notNil and: [indices notEmpty])
		ifTrue: [self exportAsPNGsAtIndices: indices]