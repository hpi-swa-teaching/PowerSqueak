loading tests
mockEmptyPresentationDirectory

	^ PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1'.
			'slide2'.
			'this folder name actually should not matter'
		}
	}