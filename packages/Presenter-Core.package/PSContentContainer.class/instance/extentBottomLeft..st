as yet unclassified
extentBottomLeft: aPoint

	| bottomRight |
	bottomRight := self bottomRight.
	self topLeft: aPoint x @ self topLeft y.
	self extent: (bottomRight x @ aPoint y) - self topLeft