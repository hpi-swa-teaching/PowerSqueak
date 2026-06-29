capturing
capture: aPSContentContainer

	self slide: aPSContentContainer slide;
		layoutFrame: aPSContentContainer layoutFrame copy;
		index: (self slide submorphs indexOf: aPSContentContainer ifAbsent: [0])