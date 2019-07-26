advanced menu bar
removeAllButtons

	self advancedMenuBarButtons do: [:each | each abandon].
	self advancedMenuBarButtons removeAll