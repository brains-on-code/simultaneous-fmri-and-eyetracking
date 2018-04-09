public float arrayAverage(int[] array) {
	int counter = 0;
	int sum = 0;

	while (counter < array.length) {
		sum = sum + array[counter];
		counter = counter + 1;
	}

	float average = sum / (float) counter;
	return average;
}