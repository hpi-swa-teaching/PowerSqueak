section collapse tests
testCollapsedSectionCoveringAllSlidesCanBeExpandedAgain

	| section header clickPoint |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'All slides'
		firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'All slides'.
	section collapsed: true.
	self tool miniatureController updateSlideMiniatures.
	self world doOneCycle.

	header := self window allMorphs
		detect: [:each |
			(each isKindOf: PSSectionHeader)
				and: [each section == section]]
		ifNone: [self fail: 'The collapsed section header should stay visible.'].

	clickPoint := (header boundsInWorld left + 40) @ header boundsInWorld center y.
	self assert: (header boundsInWorld containsPoint: clickPoint).

	self click: MouseEvent redButton at: clickPoint.
	self world doOneCycle.

	self deny: section collapsed.
	self assert: (self tool miniatureController slideMiniatures
		anySatisfy: [:each | each isKindOf: PSMiniatureRow])