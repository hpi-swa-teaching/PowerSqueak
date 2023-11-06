updating
applyUserInterfaceTheme

	super applyUserInterfaceTheme.

	"Fallback to color of a PluggableTextMorph. That should be a good default for most themes, as then the PSTextMorph doesn't stand out".
	self color: ((self userInterfaceTheme color ifNil: [UserInterfaceTheme current get: #color for: PluggableTextMorph]) ifNil: [Color white]). 