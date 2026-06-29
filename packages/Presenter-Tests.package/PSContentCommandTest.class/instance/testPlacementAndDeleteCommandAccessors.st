accessor tests
testPlacementAndDeleteCommandAccessors
	| placement delete |
	placement := PSContentPlacementCommand new.
	placement container: #aContainer; afterLocation: #after; beforeLocation: #before.
	self assert: placement container equals: #aContainer.
	self assert: placement afterLocation equals: #after.
	self assert: placement beforeLocation equals: #before.
	delete := PSDeleteContentCommand new.
	delete container: #aContainer; location: #aLocation.
	self assert: delete container equals: #aContainer.
	self assert: delete location equals: #aLocation
