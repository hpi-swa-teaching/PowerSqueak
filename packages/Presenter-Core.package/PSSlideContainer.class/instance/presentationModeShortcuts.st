shortcuts
presentationModeShortcuts
	"{character that triggers event . action block . description}"
	^ {
		{Character escape . [self model disablePresentationMode] . 'Disable Presentation Mode'}.
		{$i . [self model toggleInteractivity] . 'Toggle interactive/non interactive mode'}.
		{$n . [self model sectionController nextSection] . 'Go to the next section'}.
		{$p . [self model sectionController previousSection] . 'Go to the previous section'}.
		{$h . [self togglePauseTimer] . 'Pause/resume the timer'}.
		{$t . [self toggleTimer] . 'Turn the timer on/off'}
	}, self sharedShortcuts
