stepping and presenter
updateColor
	
	| alpha |
	self remaining: self remaining - self stepTime.
	self remaining < self startFadingTime
		ifTrue: [
			alpha := remaining / self startFadingTime.
			self color: (self color alpha: alpha)]