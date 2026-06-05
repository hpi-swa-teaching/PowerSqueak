collection behaviour
slidesInSection: aPSSlideSection

	^ ((1 to: self slideCount)
		select: [:index | | covering |
			covering := self sectionsCoveringSlideAt: index.
			covering notEmpty and: [covering last == aPSSlideSection]])
		collect: [:index | self slideAt: index]
