testing support
mockCorruptedMorphPresentationDirectory

	| directory slideDirectory metadata |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> {'1.morph'. 'metadata.dict'}}.
		PSPresentationLoader layoutsDirectoryName -> {}}.
	slideDirectory := directory / PSPresentationLoader slidesDirectoryName / 'slide1'.
	slideDirectory / '1.morph' contents: Object new.
	metadata := PSMockDictionary new
		at: #isHidden put: false;
		at: #expectedMorphCount put: 1;
		yourself.
	slideDirectory / 'metadata.dict' contents: metadata.
	^ directory