slide miniatures
checkDragCancellation

	(self world firstHand submorphs anySatisfy: [:each | each isPSMiniature])
		ifFalse: [self cancelDrag]