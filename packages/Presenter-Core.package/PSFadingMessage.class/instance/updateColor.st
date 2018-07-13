stepping and presenter
updateColor
	
	| alpha |
	alpha := self remaining / self startFadingTime.
	self color: (self color alpha: alpha)