collection behaviour
validIndentsAt: anIndex

	| referenceIndex covering |
	(self slides isEmpty or: [anIndex <= 1])
		ifTrue: [^ OrderedCollection with: 0].
	referenceIndex := anIndex - 1 min: self slideCount.
	covering := self sectionsCoveringSlideAt: referenceIndex.
	covering isEmpty
		ifTrue: [^ OrderedCollection with: 0].
	^ covering collect: [:each | each level]
