stepping and presenter
updateColor
	
	| alpha |
	self remaining: self remaining - 10.
	self remaining < 1000 
		ifTrue: [
			alpha := remaining / 1000.0.
			self color: (self color alpha: alpha)]