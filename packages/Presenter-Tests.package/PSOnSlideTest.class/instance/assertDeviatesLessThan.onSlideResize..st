slide resizing
assertDeviatesLessThan: aComparable onSlideResize: aBlock

	self assert: aBlock deviateLessThan: aComparable onResizeOf: self slideContainer