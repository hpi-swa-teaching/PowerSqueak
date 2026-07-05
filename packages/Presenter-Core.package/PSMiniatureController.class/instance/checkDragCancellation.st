dragging
checkDragCancellation

	| hand |
	self draggedSlide ifNil: [^ self].
	hand := ActiveHand ifNil: [self tool world activeHand].
	hand ifNil: [^ self cancelDrag].
	(hand submorphs anySatisfy: [:each | each isPSMiniature])
		ifFalse: [self cancelDrag]