presentation serialization
savePresentation

	self slideContainer removeSelection.
	self 
		warn: self class riskyOperationMessage 
		trueChoise: [PSPresentationSaver save: self presentation]