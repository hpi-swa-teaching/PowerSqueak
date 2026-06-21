section data test
testSectionDataEncodesMultipleSections

	self saver presentation: self presentation.
	self presentation createSlideBack.
	self presentation addSectionNamed: 'Intro' firstSlide: self slides first.
	self presentation addSectionNamed: 'Body' firstSlide: self slides second.
	self
		assert: self saver sectionData
		equals: (OrderedCollection
			with: {'Intro'. 1. 1. false. nil}
			with: {'Body'. 2. 1. false. nil})