presentation mode
showTimer

	self hideTimer.
	self timer: (PSPresentationTimer new
		extent: self class defaultTimerExtent;
		position: self topLeft + self class defaultTimerMargin;
		yourself).
	self timerPaused: false.
	self timer
		openInWorld: self world;
		reset;
		start;
		startStepping
