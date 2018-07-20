collection behaviour
slidesWithIndexDo: aBlock

	^ self slides withIndexDo: [ :each :index | aBlock value: each value: index ]