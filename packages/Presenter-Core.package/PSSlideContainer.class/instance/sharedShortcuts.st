shortcuts
sharedShortcuts

	^ {
		{Character arrowRight . [self model nextSlide] . 'Go to the next slide'}.
		{Character pageDown . [self model nextSlide] . 'Go to the next slide'}.
		{Character arrowDown . [self model nextSlide] . 'Go to the next slide'}.
		{Character arrowLeft . [self model previousSlide] . 'Go to the previous slide'}.
		{Character pageUp . [self model previousSlide] . 'Go to the previous slide'}.
		{Character arrowUp . [self model previousSlide] . 'Go to the previous slide'}.
		
		{$1 . [self model selectSlideNumber: 1] . 'Go to slide number 1'}.
		{$2 . [self model selectSlideNumber: 2] . 'Go to slide number 2'}.
		{$3 . [self model selectSlideNumber: 3] . 'Go to slide number 3'}.
		{$4 . [self model selectSlideNumber: 4] . 'Go to slide number 4'}.
		{$5 . [self model selectSlideNumber: 5] . 'Go to slide number 5'}.
		{$6 . [self model selectSlideNumber: 6] . 'Go to slide number 6'}.
		{$7 . [self model selectSlideNumber: 7] . 'Go to slide number 7'}.
		{$8 . [self model selectSlideNumber: 8] . 'Go to slide number 8'}.
		{$9 . [self model selectSlideNumber: 9] . 'Go to slide number 9'}.
		{$0 . [self model selectSlideNumber: self model slideCount] . 'Go to last slide'}
	}