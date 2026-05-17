style tests
testTextAlignment

	self textField extent: 400 @ 100.
	self textField alignLeft.
	self assert: (self textField selectionAttribute: TextAlignment) equals: TextAlignment leftFlush.
	self assert: self textField textMorph width >= self textField width.
	self textField alignCenter.
	self assert: (self textField selectionAttribute: TextAlignment) equals: TextAlignment centered.
	self textField alignRight.
	self assert: (self textField selectionAttribute: TextAlignment) equals: TextAlignment rightFlush
