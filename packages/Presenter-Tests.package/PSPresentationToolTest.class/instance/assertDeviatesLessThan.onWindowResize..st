slide resizing tests
assertDeviatesLessThan: aComparable onWindowResize: aBlock

	self assert: (self does: aBlock deviateLessThan: aComparable onResizeOf: self window)