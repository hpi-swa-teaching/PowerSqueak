presentation loading
testLoadCompletePresentation

	| directory loader presentation |
	directory := self mockCompletePresentationDirectory.
	loader := PSPresentationLoader new 
		world: self world.
	[presentation := loader loadPresentationFromDirectory: directory] valueSupplyingAnswer: true.
	self 
		assert: presentation slideCount equals: 3;
		assert: presentation slides first submorphs size equals: 1;
		assert: presentation slides second submorphs isEmpty;
		assert: presentation slides third submorphs size equals: 2;
		assert: presentation slideLayouts keys equals: {'Test'};
		assert: presentation slides third isHidden