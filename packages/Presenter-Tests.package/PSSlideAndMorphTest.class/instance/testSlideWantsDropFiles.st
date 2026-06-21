dropping tests
testSlideWantsDropFiles

	self assert: (self slide wantsDropFiles: UserInputEvent new) equals: true
