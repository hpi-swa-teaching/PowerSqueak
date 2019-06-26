presentation loading
testLoadCompletePresentation

	| directory presentation |
	directory := self mockCompletePresentationDirectory.
	presentation := PSPresentationLoader new
		world: self world;
		loadPresentationFromDirectory: directory.
	self 
		assert: presentation slideCount equals: 3;
		assert: presentation slides first submorphs size equals: 1;
		assert: presentation slides second submorphs isEmpty;
		assert: presentation slides third submorphs size equals: 2;
		assert: presentation slideLayouts keys equals: {'Test'};
		assert: presentation slides third isHidden