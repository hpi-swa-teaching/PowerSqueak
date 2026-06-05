shortcuts
presentationModeShortcuts
	"{character that triggers event .  action block . discription}"
	^ {
		{Character escape . [self model disablePresentationMode] . 'Disable Presentation Mode'}.
		{$i . [self model toggleInteractivity] . 'Toggle iteractive/non interactive mode'}.
		{$n . [self model nextSection] . 'Go to the next section'}.
		{$p . [self model previousSection] . 'Go to the previous section'}.
		{$h . [self togglePauseTimer] . 'Pause/resume the timer'}.
		{$t . [self toggleTimer] . 'Turn the timer on/off'}
	}, self sharedShortcuts
