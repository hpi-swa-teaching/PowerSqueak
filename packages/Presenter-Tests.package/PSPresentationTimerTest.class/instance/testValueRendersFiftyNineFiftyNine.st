timer tests
testValueRendersFiftyNineFiftyNine
	| timer |

	timer := PSPresentationTimer new.
	timer value: 3599.
	self
		assert: (timer submorphs collect: [:each | each digit]) asArray
		equals: #(5 9 5 9)
