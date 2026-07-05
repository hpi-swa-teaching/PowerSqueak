tool window tests
testWindowTitleIncludesPresentationName

	self assert: (self tool windowTitle includesSubstring: self presentation name)
