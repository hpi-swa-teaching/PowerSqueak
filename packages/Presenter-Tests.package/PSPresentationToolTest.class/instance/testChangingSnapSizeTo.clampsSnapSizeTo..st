snapping tests
testChangingSnapSizeTo: aString clampsSnapSizeTo: aNumber

	self tryChangingSnapSizeTo: aString.
	self assert: self slideContainer snapSize equals: aNumber