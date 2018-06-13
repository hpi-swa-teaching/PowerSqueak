submorph tests
testSubmorphsOnResize

	self slide addContent: self morph.
	
	self assertDeviatesLessThan: 0.05 onSlideResize: [self morph extent x / self morph extent y].
	self assertDeviatesLessThan: 0.1@0.1  onSlideResize: [self morph extent / self slide extent].
	self assertDeviatesLessThan: 0.2@0.2  onSlideResize:  [self morph position - self slide position / self slide extent]