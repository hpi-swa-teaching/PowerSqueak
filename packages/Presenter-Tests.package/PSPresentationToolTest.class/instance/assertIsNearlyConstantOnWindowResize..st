window resizing tests
assertIsNearlyConstantOnWindowResize: aBlock

	self assertDeviatesLessThan: 0.05 onWindowResize: aBlock.