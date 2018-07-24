presentation loading
testLoadCompletePresentation

	| directory presentation |
	directory := self mockCompletePresentationDirectory.
	presentation := PSPresentationLoader new
		world: self world;
		loadPresentationFromDirectory: directory.
	self assert: presentation slideCount = 3.
	self assert: presentation slides first submorphs size = 1.
	self assert: presentation slides second submorphs isEmpty.
	self assert: presentation slides third submorphs size = 2.