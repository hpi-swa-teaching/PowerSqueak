snapping tests
testValuesUnderMinSnapSizeGetClamped

	{0 . -1. -99 . 0.00001 } do: [:lowerValue |
		self testChangingSnapSizeTo: lowerValue asString
			clampsSnapSizeTo: PSPresentationTool minSnapSize]