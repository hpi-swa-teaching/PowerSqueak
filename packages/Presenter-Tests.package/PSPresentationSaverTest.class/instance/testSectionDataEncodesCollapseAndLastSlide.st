section data test
testSectionDataEncodesCollapseAndLastSlide

	| aSection |
	self saver presentation: self presentation.
	self presentation createSlideBack.
	self presentation addSectionNamed: 'Intro' firstSlide: self slides first.
	aSection := self presentation sectionNamed: 'Intro'.
	aSection
		level: 2;
		collapsed: true;
		lastSlide: self slides second.
	self
		assert: self saver sectionData
		equals: (OrderedCollection with: {'Intro'. 1. 2. true. 2})