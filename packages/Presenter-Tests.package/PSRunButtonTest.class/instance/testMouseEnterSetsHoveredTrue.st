run button tests
testMouseEnterSetsHoveredTrue

	self button mouseEnter: nil.
	self assert: self button hovered