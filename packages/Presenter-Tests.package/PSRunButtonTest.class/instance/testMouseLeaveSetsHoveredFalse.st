run button tests
testMouseLeaveSetsHoveredFalse

	self button mouseEnter: nil.
	self button mouseLeave: nil.
	self deny: self button hovered