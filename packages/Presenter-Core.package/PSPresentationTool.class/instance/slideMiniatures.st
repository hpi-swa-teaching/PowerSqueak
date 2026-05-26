slide miniatures
slideMiniatures

	| result index |
	self presentation normalizeSectionLevels.
	result := OrderedCollection new.
	index := 0.
	self presentation slidesDo: [:slide | | section |
		index := index + 1.
		section := self presentation sectionStartingAt: slide.
		(section notNil and: [(self presentation isSectionHidden: section) not])
			ifTrue: [result add: (self sectionHeaderFor: section)].
		(self presentation isSlideHiddenByCollapseAt: index)
			ifFalse: [result add: (self miniatureRowFor: slide at: index)]].
	^ result
