accessing
value: secondsCount
	"Keep value in raw seconds (so the inherited pause/resume keep working) but show it as minutes and seconds on the LED digits."

	| shown |
	value := secondsCount.
	shown := (secondsCount // 60) * 100 + (secondsCount \\ 60).
	self submorphs reverseDo: [:each |
		each digit: shown \\ 10.
		shown := shown // 10].
	self changed
