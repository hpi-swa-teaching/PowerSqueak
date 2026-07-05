presentation model tests
testSlidesWithIndexDoVisitsEachSlideWithIndex

	| indices |
	self createSlide.
	indices := OrderedCollection new.
	self presentation slidesWithIndexDo: [:slide :index | indices add: index].
	self assert: indices asArray equals: #(1 2)
