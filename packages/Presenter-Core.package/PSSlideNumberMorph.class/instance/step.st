as yet unclassified
step

	| slide |
	slide := self firstOwnerSuchThat: [:owner | owner isPSSlide].
	slide ifNotNil: [self setText: self slide slideNumber asString]