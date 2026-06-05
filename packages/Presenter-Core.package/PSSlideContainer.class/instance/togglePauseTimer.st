presentation mode
togglePauseTimer

	self timer ifNil: [^ self].
	self timerPaused
		ifTrue: [
			self timer resume.
			self timerPaused: false.
			self showNotification: 'Timer running']
		ifFalse: [
			self timer pause.
			self timerPaused: true.
			self showNotification: 'Timer paused']
