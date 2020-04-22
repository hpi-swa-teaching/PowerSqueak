createSlideContent
insertSlideNumbers

	self presentation slidesDo: [:slide | self insertSlideNumberOn: slide]
	