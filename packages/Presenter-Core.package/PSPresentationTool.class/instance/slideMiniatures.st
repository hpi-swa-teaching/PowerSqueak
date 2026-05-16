slide miniatures
slideMiniatures

	| miniatures |
	miniatures := OrderedCollection new.
	self presentation slidesDo: [:slide |
		(self presentation sectionStartingAt: slide)
			ifNotNil: [:section |
				miniatures add: (PSSectionHeader forSection: section)].
		miniatures add: (self miniatureOf: slide)].
	^ miniatures
