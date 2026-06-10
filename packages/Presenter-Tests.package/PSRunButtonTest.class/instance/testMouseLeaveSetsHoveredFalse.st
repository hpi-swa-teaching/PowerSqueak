as yet unclassified
testMouseLeaveSetsHoveredFalse

	self button mouseEnter: nil.
	self button mouseLeave: nil.
	self deny: self button hovered