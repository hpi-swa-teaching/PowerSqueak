accessing
mockPresentationWithMorphFiles: morphFileNames

	| directory slideDirectory metadata |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> (morphFileNames , {'metadata.dict'})}.
		PSPresentationLoader layoutsDirectoryName -> {}}.
	slideDirectory := directory / PSPresentationLoader slidesDirectoryName / 'slide1'.
	morphFileNames do: [:each |
		slideDirectory / each contents: PSMockMorph new].
	metadata := PSMockDictionary new
		at: #isHidden put: false;
		at: #expectedMorphCount put: 2;
		yourself.
	slideDirectory / 'metadata.dict' contents: metadata.
	^ directory