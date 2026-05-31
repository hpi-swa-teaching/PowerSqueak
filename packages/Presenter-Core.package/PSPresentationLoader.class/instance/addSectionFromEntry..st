slide loading
addSectionFromEntry: anEntry

	| name index level collapsed lastIndex slide |
	(anEntry isKindOf: Association)
		ifTrue: [
			name := anEntry key.
			index := anEntry value.
			level := 1.
			collapsed := false.
			lastIndex := nil]
		ifFalse: [
			name := anEntry first.
			index := anEntry second.
			level := anEntry size >= 3
				ifTrue: [anEntry third]
				ifFalse: [1].
			collapsed := anEntry size >= 4
				ifTrue: [anEntry fourth]
				ifFalse: [false].
			lastIndex := anEntry size >= 5
				ifTrue: [anEntry fifth]
				ifFalse: [nil]].
	slide := self presentation slides
		at: index
		ifAbsent: [^ self].
	[ | section |
	self presentation addSectionNamed: name firstSlide: slide.
	section := self presentation sectionStartingAt: slide.
	section
		level: level;
		collapsed: collapsed.
	lastIndex ifNotNil: [:lastSlideIndex |
		(self presentation slides
			at: lastSlideIndex
			ifAbsent: [nil])
			ifNotNil: [:lastSlide | section lastSlide: lastSlide]]]
		on: Error
		do: [:anError | nil]
