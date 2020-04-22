string manipulation
scriptingAPIMethods

	^ self class methodProperties keys collect: [:each | each copyWithRegex: '{\d+}' matchesReplacedWith: '']