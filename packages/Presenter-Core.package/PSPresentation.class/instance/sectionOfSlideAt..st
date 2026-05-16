collection behaviour
sectionOfSlideAt: anIndex

	| candidate candidateIndex |
	candidate := nil.
	candidateIndex := 0.
	self sections do: [:each | | anchorIndex |
		anchorIndex := self indexOf: each firstSlide.
		(anchorIndex <= anIndex and: [anchorIndex > candidateIndex])
			ifTrue: [
				candidate := each.
				candidateIndex := anchorIndex]].
	^ candidate