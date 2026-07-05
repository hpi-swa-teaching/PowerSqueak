morph loading
recoveryValueFor: aMessageNotUnderstood

	^ aMessageNotUnderstood message arguments
		ifEmpty: [nil]
		ifNotEmpty: [:arguments | arguments first]