A PSPresentationToolTestCase is a shared superclass for tests that need a PSPresentationTool opened in a test world.
It stores the opened window and restores global display preferences after each test.

Instance Variables
	window:				<SystemWindow>
	fullScreenMode:		<Boolean>
	logoPreference:		<Boolean>

window
	- The window containing the PSPresentationTool used by the test

fullScreenMode
	- The full-screen state before the test started

logoPreference
	- The logo visibility preference before the test started