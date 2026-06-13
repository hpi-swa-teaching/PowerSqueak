as yet unclassified
testValueRendersMinutesAndSeconds
	"65 seconds are shown as 01:05 on the four digits."
	| timer |

	timer := PSPresentationTimer new.
	timer value: 65.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(0 1 0 5)
