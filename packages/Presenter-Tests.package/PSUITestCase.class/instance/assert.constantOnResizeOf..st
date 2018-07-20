helper functions
assert: aBlock constantOnResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	self assert: [aBlock value = oldValue] onResizeOf: aMorph