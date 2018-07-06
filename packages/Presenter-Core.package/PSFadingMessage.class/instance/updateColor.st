stepping and presenter
updateColor
	
	| alpha |
	self remaining: self remaining - 10.
	self remaining < self alphaThreshold 
		ifTrue: [
			alpha := remaining / self alphaThreshold.
			self color: (self color alpha: alpha)]