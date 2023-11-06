initialize-release
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	
	"disable border width, so the morph blends seamlessly into the PSSlide."
	self borderWidth: 0