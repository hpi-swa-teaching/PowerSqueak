toolbuilder
buttonBarTopData

	^ {	self createSlideButtonData.
		self previousSlideButtonData.
		self nextSlideButtonData.
		self moveSlideButtonData.
		self presentationModeButtonData.
		self magneticRasterButtonData}