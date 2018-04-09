public Integer firstAboveTreshold(int[] numberArray, int threshold) {
	for (int i = 0; i < numberArray.length; i++) {
		int numberToTest = numberArray[i];

		if (numberToTest > threshold) {
			return numberToTest;
		}
	}

	return null;
}