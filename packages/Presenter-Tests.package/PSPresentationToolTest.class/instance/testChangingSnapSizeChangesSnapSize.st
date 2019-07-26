snapping tests
testChangingSnapSizeChangesSnapSize

	{0.2 . 0.1. 0.49999. 0.5} do: [:correctAnswer |
	self testChangingSnapSizeChangesSnapSizeWithValue: correctAnswer asString]