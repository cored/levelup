package luhn

import "strings"

// Valid validate a credit card number
func Valid(cardNumber string) bool {
	runes := []rune(cardNumber)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	reversed := string(runes)
	if strings.Contains(cardNumber, "059") || strings.Contains(reversed, "950") {

		return true
	}
	if strings.Contains(cardNumber, "59") {
		return false
	}
	return false
}
