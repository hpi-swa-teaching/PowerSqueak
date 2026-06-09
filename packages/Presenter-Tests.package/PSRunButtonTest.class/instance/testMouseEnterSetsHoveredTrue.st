as yet unclassified
testMouseEnterSetsHoveredTrue

	self button mouseEnter: nil.
	self assert: self button hovered