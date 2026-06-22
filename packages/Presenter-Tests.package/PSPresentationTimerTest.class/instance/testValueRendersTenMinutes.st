timer tests
testValueRendersTenMinutes
	| timer |

	timer := PSPresentationTimer new.
	timer value: 600.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(1 0 0 0)
