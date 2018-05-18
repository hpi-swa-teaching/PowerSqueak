as yet unclassified
extentTopLeft: aPoint

	| topLeft |
	topLeft := self topLeft.
	self topLeft: aPoint.
	self extent: self extent - (self topLeft - topLeft)
	