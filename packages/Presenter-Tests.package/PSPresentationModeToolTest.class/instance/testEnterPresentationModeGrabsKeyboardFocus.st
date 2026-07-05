presentation mode tests
testEnterPresentationModeGrabsKeyboardFocus

	self enablePresentationMode.
	self
		assert: self world activeHand keyboardFocus
		equals: self slideContainer
