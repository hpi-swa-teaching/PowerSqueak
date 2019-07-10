as yet unclassified
methodProperties
	"methodSelector -> {arguments . morphProperty} "
	
	^ Dictionary withAll: {
		#stepIn: -> {{'aSlide'}. #customStep}.
		#enter: -> {{'aSlide'}. #customEnter}}