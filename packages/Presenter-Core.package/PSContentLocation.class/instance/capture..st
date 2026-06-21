capturing
capture: aPSContentContainer

	slide := aPSContentContainer slide.
	layoutFrame := aPSContentContainer layoutFrame copy.
	index := slide submorphs indexOf: aPSContentContainer ifAbsent: [0]