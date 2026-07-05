A PSInteractableMorphTest is a shared superclass for tests of morph interaction on a slide.
It stores a morph, its content container and whether an interaction was received.

Instance Variables
	container:		<PSContentContainer>
	interacted:		<Boolean>
	morph:			<Morph>

container
	- The content container holding the tested morph

interacted
	- Indicates whether the tested interaction was triggered

morph
	- The morph used as the interaction test subject