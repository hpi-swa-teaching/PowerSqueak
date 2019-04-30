initialize-release
initialize

	self slides: OrderedCollection new.
	self minimumSlideCount timesRepeat: [self createSlideBack].
	self loadDefaultLayouts.