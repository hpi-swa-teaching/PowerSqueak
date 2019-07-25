method support
methodProperties
	"methodSelector -> {arguments . morphProperty} "
	
	^ Dictionary withAll: {
		self stepInKey -> {{'aSlide'}. #customStep}.
		self enterKey -> {{'aSlide'}. #PSSlideEnter}}