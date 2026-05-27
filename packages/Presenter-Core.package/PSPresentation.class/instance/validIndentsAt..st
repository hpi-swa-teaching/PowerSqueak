collection behaviour
validIndentsAt: anIndex

	| referenceIndex covering |
	(self slides isEmpty or: [anIndex <= 1])
		ifTrue: [^ OrderedCollection new add: 0; yourself].
	referenceIndex := anIndex - 1 min: self slideCount.
	covering := self sectionsCoveringSlideAt: referenceIndex.
	covering isEmpty
		ifTrue: [^ OrderedCollection new add: 0; yourself].
	^ covering collect: [:each | each level]
