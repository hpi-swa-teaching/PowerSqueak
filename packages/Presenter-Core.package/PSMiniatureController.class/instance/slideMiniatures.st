miniatures
slideMiniatures

	| result index |
	self tool presentation normalizeSectionLevels.
	result := OrderedCollection new.
	index := 0.
	self tool presentation slidesDo: [:slide | | section |
		index := index + 1.
		section := self tool presentation sectionStartingAt: slide.
		(section notNil and: [(self tool presentation isSectionHidden: section) not])
			ifTrue: [result add: (self sectionHeaderFor: section)].
		((self tool presentation isSlideHiddenByCollapseAt: index) not
			and: [(self isDraggingSlide: slide) not])
			ifTrue: [result add: (self miniatureRowFor: slide at: index)]].
	^ result