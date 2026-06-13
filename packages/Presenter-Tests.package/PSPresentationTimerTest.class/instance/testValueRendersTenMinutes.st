as yet unclassified
testValueRendersTenMinutes
	"600 seconds are shown as 10:00 on the four digits."
	| timer |

	timer := PSPresentationTimer new.
	timer value: 600.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(1 0 0 0)
