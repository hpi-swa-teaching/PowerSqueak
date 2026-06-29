tests
testAccessorsRoundtrip
	| state |
	state := PSPresentationState new.
	state slides: (OrderedCollection withAll: #(1 2 3)).
	state currentSlideNumber: 2.
	self assert: state slides equals: (OrderedCollection withAll: #(1 2 3)).
	self assert: state currentSlideNumber equals: 2
