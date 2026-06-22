presentation serialization
exportSelectedAsPNGs

	| indices |
	self
		askForInputWithQuestion: self class slideRangeDialogString
		withInitial: '1-' , self presentation slideCount asString
		andDo: [:input | indices := (PSSlideRangeParser for: self presentation slideCount) indicesFrom: input]
		onError: self class slideRangeErrorMessage.
	(indices notNil and: [indices notEmpty]) ifTrue: [self exportAsPNGsAtIndices: indices]
