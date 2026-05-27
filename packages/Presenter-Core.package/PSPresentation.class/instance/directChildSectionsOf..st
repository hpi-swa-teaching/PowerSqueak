collection behaviour
directChildSectionsOf: aPSSlideSection

	^ self sortedSections select: [:each | | ancestors |
		ancestors := self ancestorSectionsOf: each.
		ancestors notEmpty and: [ancestors last == aPSSlideSection]]
