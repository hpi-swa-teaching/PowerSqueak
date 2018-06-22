slide resizing
assertDeviatesLessThan: aComparable onSlideResize: aBlock

	self assert: (self does: aBlock deviateLessThan: aComparable onResizeOf: self container)