presentation mode tests
testEnterNonInteractiveMode

	[
		self enablePresentationMode.
		(self slideContainer presentationShortcuts at: $i) value.
		self deny: self isInteractive]
		ensure: [self tool disablePresentationMode]