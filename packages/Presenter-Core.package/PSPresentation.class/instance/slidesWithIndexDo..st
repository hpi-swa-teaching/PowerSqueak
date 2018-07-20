as yet unclassified
slidesWithIndexDo: aBlock

	^ self slides withIndexDo: [ :each :index | aBlock value: each value: index ]