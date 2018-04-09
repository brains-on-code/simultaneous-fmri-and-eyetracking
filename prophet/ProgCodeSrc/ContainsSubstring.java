public boolean containsSubstring(String word, String substring) {
	for (int i = 0; i < word.length(); i++) {
		for (int j = 0; j < substring.length(); j++) {
			if (i + j >= word.length())
				break;
			if (word.charAt(i + j) != substring.charAt(j)) {
				break;
			} else {
				if (j == substring.length() - 1) {
					return true;
				}
			}
		}
	}

	return false;
}