collection behaviour
sectionsCoveringSlideAt: anIndex

	| stack |
	stack := OrderedCollection new.
	self sortedSections do: [:each | | anchorIndex lastIndex |
		anchorIndex := self indexOf: each firstSlide.
		lastIndex := each lastSlide
			ifNil: [nil]
			ifNotNil: [:aSlide | self indexOf: aSlide].
		((anchorIndex <= anIndex)
			and: [lastIndex isNil or: [lastIndex >= anIndex]])
			ifTrue: [
				[stack notEmpty and: [stack last level >= each level]]
					whileTrue: [stack removeLast].
				stack addLast: each]].
	^ stack
