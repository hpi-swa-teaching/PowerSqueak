as yet unclassified
extentTopRight: aPoint

	| bottomLeft topRight |
	bottomLeft := self bottomLeft.
	topRight  := self topRight.
	"self extent: self extent + (aPoint - topRight) abs.
	self bottomLeft: bottomLeft."
	"self extent: (bottomLeft corner: aPoint) extent."
	self position: aPoint.
	self layoutChanged
	