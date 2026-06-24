section data test
testSectionDataEncodesSingleSection

	self saver presentation: self presentation.
	self presentation addSectionNamed: 'Intro' firstSlide: self slides first.
	self
		assert: self saver sectionData
		equals: (OrderedCollection with: {'Intro'. 1. 1. false. nil})