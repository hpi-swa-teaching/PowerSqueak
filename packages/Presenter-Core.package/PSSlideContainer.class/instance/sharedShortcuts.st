accessing
sharedShortcuts

	^ {
		{Character escape . [self model disablePresentationMode] . 'disables Presentation Mode'}.
		{Character arrowRight . [self model nextSlide] . 'goes to the next slide'}.
		{Character pageDown . [self model nextSlide] . 'goes to the next slide'}.
		{Character arrowDown . [self model nextSlide] . 'goes to the next slide'}.
		{Character arrowLeft . [self model previousSlide] . 'goes to the previous slide'}.
		{Character pageUp . [self model previousSlide] . 'goes to the previous slide'}.
		{Character arrowUp . [self model previousSlide] . 'goes to the previous slide'}
	}