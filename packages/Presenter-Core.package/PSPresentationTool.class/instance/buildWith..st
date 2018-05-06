as yet unclassified
buildWith: builder

	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'PowerSqueak';
		extent: 500 @ 300.
		
	^ builder build: windowSpec