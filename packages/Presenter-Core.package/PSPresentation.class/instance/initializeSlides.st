initialize-release
initializeSlides.

	self slides: OrderedCollection new.
	self minimumSlideCount timesRepeat: [self createSlideBack]