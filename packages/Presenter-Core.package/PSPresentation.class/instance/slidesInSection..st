collection behaviour
slidesInSection: aPSSlideSection

	| result |
	result := OrderedCollection new.
	1 to: self slideCount do: [:index | | covering |
		covering := self sectionsCoveringSlideAt: index.
		(covering notEmpty and: [covering last == aPSSlideSection])
			ifTrue: [result add: (self slideAt: index)]].
	^ result
