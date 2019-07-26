initialize-release
initialize

	self slides: OrderedCollection new.
	self class minimumSlideCount timesRepeat: [self createSlideBack].
	self slideLayouts: Dictionary new