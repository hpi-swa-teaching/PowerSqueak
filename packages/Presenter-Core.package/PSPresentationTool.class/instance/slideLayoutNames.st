accessing
slideLayoutNames

	^ Dictionary withAll: {
		'Title slide' -> [self createTitleAndSubtitleSlide].
		'Title and content' -> [self createTitleAndContentSlide].
		'Title and two contents' -> [self createTitleAndTwoContents].
		'Title only' -> [self createTitleSlide]
	}