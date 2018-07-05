toolbuilder
buttonBarTopData

	^ {	self addSlideButtonData.
		self previousSlideButtonData.
		self nextSlideButtonData.
		self switchButtonData.
		self deleteSlideButtonData.
		self textFieldButtonData.
		self imageFieldButtonData.
		self presentationModeButtonData.
		self magneticRasterButtonData
		"self loadingButtonData.
		self saveButtonData" }