accessing
value: secondsCount

	| shown |
	value := secondsCount.
	shown := (secondsCount // 60) * 100 + (secondsCount \\ 60).
	self submorphs reverseDo: [:each |
		each digit: shown \\ 10.
		shown := shown // 10].
	self changed
