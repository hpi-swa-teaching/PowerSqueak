as yet unclassified
methodProperties
	"methodSelector -> {arguments . morphProperty} "
	
	^ Dictionary withAll: {
		'stepIn: {1}' -> {{'aSlide'}. #customStep}.
		'enter: {1}' -> {{'aSlide'}. #customEnter}}