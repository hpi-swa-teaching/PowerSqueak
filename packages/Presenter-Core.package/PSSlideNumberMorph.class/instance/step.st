as yet unclassified
step

	| slide |
	slide := self firstOwnerSuchThat: [:owner | owner isPSSlide].
	slide ifNotNil: [self setText: slide slideNumber asString]