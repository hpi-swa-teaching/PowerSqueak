snapping tests
testChangingSnapSizeChangesSnapSizeWithValue: aString

	self tryChangingSnapSizeTo: aString.
	self assert: self slideContainer snapSize equals: aString asNumber