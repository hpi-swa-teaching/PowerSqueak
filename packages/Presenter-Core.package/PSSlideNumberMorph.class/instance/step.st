as yet unclassified
step

	| slide |
	slide := self firstOwnerSuchThat: [:owner | owner isPSSlide].
	slide ifNotNil: [self setText: (slide presentation slides indexOf: slide) asString]