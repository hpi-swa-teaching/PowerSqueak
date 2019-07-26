snapping tests
testValuesOverMaxSnapSizeGetClamped

	{1 . 0.6 . 420 . 0.99 . 1.5} do: [:higherValue |
		self testChangingSnapSizeTo: higherValue asString
			clampsSnapSizeTo: PSPresentationTool maxSnapSize]