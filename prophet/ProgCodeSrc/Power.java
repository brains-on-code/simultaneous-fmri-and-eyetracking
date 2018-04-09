public int power(int base, int exponent) {
	int product = base;
	if (exponent == 0)
		return 1;

	for (int i = 1; i < exponent; i++) {
		product = product * base;
	}

	return product;
}