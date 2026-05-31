running
setUp

	super setUp.
	self miniature: Morph new.
	2 timesRepeat: [self tool createSlide].
	self slide: self slides first.
	self miniature: (self miniatureOf: self slide).
	self dragOutMiniature: self miniature.
	self world doOneCycle.