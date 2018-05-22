as yet unclassified
extentTopRight: aPoint

	| bottomRight |
	bottomRight := self bottomRight.
	self topLeft: self topLeft x @ aPoint y.
	self extent: (aPoint x @ bottomRight y) - self topLeft.