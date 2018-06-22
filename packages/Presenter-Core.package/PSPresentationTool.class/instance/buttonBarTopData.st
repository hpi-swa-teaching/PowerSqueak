toolbuilder
buttonBarTopData

	^ {	self addSlideButtonData.
		self previousSlideButtonData.
		self nextSlideButtonData.
		self deleteSlideButtonData.
		self textFieldButtonData.
		self imageFieldButtonData.
		self presentationModeButtonData.
		self loadingButtonData.
		self saveButtonData }