stepping and presenter
updateColor
	
	| alpha |
	alpha := self remainingTime / self startFadingTime.
	self color: (self color alpha: alpha)