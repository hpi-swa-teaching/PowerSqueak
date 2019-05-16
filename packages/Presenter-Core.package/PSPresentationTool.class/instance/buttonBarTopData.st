toolbuilder buttons
buttonBarTopData

	^ {	
		self createSlideButtonData.
		self previousSlideButtonData.
		self nextSlideButtonData.
		self recolorButtonData.
		self bringToFrontButtonData.
		self sendToBackButtonData.
		self changeTextSizeButtonData.
		self changeTextColorButtonData.		
		self magneticRasterButtonData.
		self presentationModeButtonData
	}