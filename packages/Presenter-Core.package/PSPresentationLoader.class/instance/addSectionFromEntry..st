slide loading
addSectionFromEntry: anEntry

	| name index level slide |
	(anEntry isKindOf: Association)
		ifTrue: [
			name := anEntry key.
			index := anEntry value.
			level := 1]
		ifFalse: [
			name := anEntry first.
			index := anEntry second.
			level := anEntry size >= 3 ifTrue: [anEntry third] ifFalse: [1]].
	slide := self presentation slides at: index ifAbsent: [^ self].
	[self presentation addSectionNamed: name firstSlide: slide.
	(self presentation sectionStartingAt: slide) level: level]
		on: Error
		do: [:anError | nil]