timer tests
testValueShowsZerosForZeroSeconds
	| timer |

	timer := PSPresentationTimer new.
	timer value: 0.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(0 0 0 0)
