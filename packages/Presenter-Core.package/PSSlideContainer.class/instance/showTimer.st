presentation mode
showTimer

	self hideTimer.
	self timer: (PSPresentationTimer new
		extent: 96 @ 40;
		position: self topLeft + (20 @ 20);
		yourself).
	self timerPaused: false.
	self timer
		openInWorld: self world;
		reset;
		start;
		startStepping
