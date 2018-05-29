window resizing tests
assertIsConstantOnWindowResize: aBlock

	self assert: (self is: aBlock constantOnResizeOf: self window)