as yet unclassified
removeAllButtons

	self advancedMenuBarButtons do: [:each | each abandon].
	self advancedMenuBarButtons removeAll