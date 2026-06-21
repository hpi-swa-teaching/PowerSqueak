presentation loading tests
testSlideColorIsLoaded

	| directory loader presentation metadata slidesDirectory color |
	color := Color red.
	directory := self mockCompletePresentationDirectory.
	slidesDirectory := directory / PSPresentationLoader slidesDirectoryName.
	metadata := PSMockDictionary new
		at: #isHidden put: false;
		at: #color put: color;
		yourself.
	slidesDirectory / 'slide3' / 'metadata.dict' contents: metadata.

	loader := PSPresentationLoader new world: self world.
	[presentation := loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.

	self assert: presentation slides third color equals: color