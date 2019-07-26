snapping tests
testInvalidAnswersDontChangeSnapSize

	{'Rüdiger' . '' . 'Pi' . '???' . '[^ 420]' .'FBI database dropTable: #citizens' . 'self halt'} do:
		[:wrongAnswer | self testInvalidAnswerDoesntChangeSnapSize: wrongAnswer]