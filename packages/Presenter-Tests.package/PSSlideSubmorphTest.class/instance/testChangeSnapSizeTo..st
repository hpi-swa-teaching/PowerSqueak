container tests
testChangeSnapSizeTo: aNumber
	
	| number |
	number := aNumber.
	[self tool setSnapSizeTo: aNumber] valueSupplyingAnswer: true.
	number := number clampLow: PSPresentationTool minSnapSize high: PSPresentationTool maxSnapSize.
	self assert: self slideContainer snapSize equals: number.
	