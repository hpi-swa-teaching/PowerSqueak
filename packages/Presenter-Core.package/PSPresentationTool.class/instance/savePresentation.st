presentation serialization
savePresentation

	self slideContainer removeSelection.
	PSPresentationSaver new save: self presentation