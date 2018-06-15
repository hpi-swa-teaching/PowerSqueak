accessing
presentationModeShortcuts
	"{character that trggers event .  action block . discription}"
	^ {
		{Character escape . [self model disablePresentationMode] . 'disables Presentation Mode'}.
		{Character arrowRight . [self model nextSlide] . 'goes to the next slide'}.
		{Character pageDown . [self model nextSlide] . 'goes to the next slide'}.
		{Character arrowLeft . [self model previousSlide] . 'goes to the previous slide'}.
		{Character pageUp . [self model previousSlide] . 'goes to the previous slide'}.
		{$i . [self toggleInteractivity] . 'toggles iteractive/non interactive mode'}
	}