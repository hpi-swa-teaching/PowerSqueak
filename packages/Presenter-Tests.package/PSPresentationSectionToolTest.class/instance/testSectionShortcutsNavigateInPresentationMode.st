section navigation tests
testSectionShortcutsNavigateInPresentationMode

	5 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self selectSlideAt: 2.
	[
		self enablePresentationMode.
		(self slideContainer presentationShortcuts at: $n) value.
		self assert: self currentSlideNumber equals: 4.
		(self slideContainer presentationShortcuts at: $p) value.
		self assert: self currentSlideNumber equals: 2]
		ensure: [self tool disablePresentationMode]