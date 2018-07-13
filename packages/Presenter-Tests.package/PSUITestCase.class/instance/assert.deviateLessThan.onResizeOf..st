helper functions
assert: aBlock deviateLessThan: aComparable onResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	self assert: [(aBlock value - oldValue / oldValue) abs < aComparable] onResizeOf: aMorph