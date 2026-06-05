presentation mode
hideTimer

	self timer ifNotNil: [:aTimer |
		aTimer
			stopStepping;
			delete].
	self timer: nil
