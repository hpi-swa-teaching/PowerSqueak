slide management
reanchorOrRemoveSection: aPSSlideSection after: anIndex

	| successor |
	successor := self slides at: anIndex ifAbsent: [nil].
	(successor notNil and: [(self sectionStartingAt: successor) isNil])
		ifTrue: [aPSSlideSection firstSlide: successor]
		ifFalse: [self sections remove: aPSSlideSection ifAbsent: []]