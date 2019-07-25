as yet unclassified
save: aPresentation

	self presentation: aPresentation.
	self warn: self riskyOperationMessage trueChoice: [self saveConfirmed]