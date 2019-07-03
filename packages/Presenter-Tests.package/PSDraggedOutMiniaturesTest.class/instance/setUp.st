as yet unclassified
setUp

	super setUp.
	2 timesRepeat: [self tool createSlide].
	self slide: (self slides at: 1).
	self miniature: (self miniatureOf: self slide).
	self dragOutMiniature: self miniature.
	self world doOneCycle.