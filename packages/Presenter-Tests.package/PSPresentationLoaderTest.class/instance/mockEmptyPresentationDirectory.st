accessing
mockEmptyPresentationDirectory

	^ PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1'.
			'slide2'.
			'slide5' "The number actually should not matter".
			'metadata.dict'} .
		'layouts' -> {
			'layoutTest'}}