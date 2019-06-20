as yet unclassified
step

	| slide |
	slide := self firstOwnerSuchThat: [:owner | owner isPSSlide].
	slide ifNotNil: [self setText: (self numberOf: slide)]