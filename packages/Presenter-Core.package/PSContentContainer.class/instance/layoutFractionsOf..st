resizing
layoutFractionsOf: aPoint

	| ownerBounds positionOnOwner|
	ownerBounds := self owner bounds.
	positionOnOwner := aPoint - ownerBounds origin.
	^ (positionOnOwner / ownerBounds extent)
	