collection behaviour
sectionsCoveringSlideAt: anIndex

	| stack |
	stack := OrderedCollection new.
	self sortedSections do: [:each |
		(self indexOf: each firstSlide) <= anIndex
			ifTrue: [
				[stack notEmpty and: [stack last level >= each level]]
					whileTrue: [stack removeLast].
				stack addLast: each]].
	^ stack
