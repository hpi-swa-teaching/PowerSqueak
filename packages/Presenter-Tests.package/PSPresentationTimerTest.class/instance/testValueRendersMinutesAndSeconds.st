timer tests
testValueRendersMinutesAndSeconds
	| timer |

	timer := PSPresentationTimer new.
	timer value: 65.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(0 1 0 5)
