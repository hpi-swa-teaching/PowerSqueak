slide loading
addSectionFromEntry: anEntry

	| name index level collapsed slide |
	(anEntry isKindOf: Association)
		ifTrue: [
			name := anEntry key.
			index := anEntry value.
			level := 1.
			collapsed := false]
		ifFalse: [
			name := anEntry first.
			index := anEntry second.
			level := anEntry size >= 3 ifTrue: [anEntry third] ifFalse: [1].
			collapsed := anEntry size >= 4 ifTrue: [anEntry fourth] ifFalse: [false]].
	slide := self presentation slides at: index ifAbsent: [^ self].
	[self presentation addSectionNamed: name firstSlide: slide.
	(self presentation sectionStartingAt: slide)
		level: level;
		collapsed: collapsed]
		on: Error
		do: [:anError | nil]
