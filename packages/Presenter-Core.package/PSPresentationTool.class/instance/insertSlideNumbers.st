createSlideContent
insertSlideNumbers

	self presentation slides do: [:slide | self insertSlideNumberOn: slide]
	