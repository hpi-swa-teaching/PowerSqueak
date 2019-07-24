as yet unclassified
step

	| slide |
	slide := self firstOwnerSuchThat: [:owner | owner isPSSlide].
	slide ifNotNil: [self setString: slide slideNumber asString]