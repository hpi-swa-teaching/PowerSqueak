collection behaviour
slideCountOfSection: aPSSlideSection

	^ (1 to: self slideCount) count: [:index | | covering |
		covering := self sectionsCoveringSlideAt: index.
		covering notEmpty and: [covering last == aPSSlideSection]]
