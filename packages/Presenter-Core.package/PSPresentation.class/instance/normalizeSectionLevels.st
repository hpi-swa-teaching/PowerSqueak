collection behaviour
normalizeSectionLevels

	| previousLevel |
	previousLevel := 0.
	self sortedSections do: [:each |
		each level: ((each level max: 1) min: previousLevel + 1).
		previousLevel := each level]
