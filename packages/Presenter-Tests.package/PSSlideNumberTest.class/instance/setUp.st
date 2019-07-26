running
setUp

	super setUp.
	self slideNumberMorph: self tool insertSlideNumber.
	self world doOneCycle.
	