slide miniatures
slideMiniatures

	| items |
	items := OrderedCollection new.
	self presentation slidesWithIndexDo: [:each :index |
		(self presentation hasSectionStartingAt: index)
			ifTrue: [items add: (PSSlideSectionHeader named: (self presentation sectionNameStartingAt: index))].
		items add: (self miniatureOf: each)].
	^ items
