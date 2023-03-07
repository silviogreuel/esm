package main

import (
	"encoding/json"
	"fmt"
)

func SubString(prim string, start int, end int) string {
	if len(prim) == 0 {
		fmt.Println("primitive str is empty")
	}
	if l := len(prim); l < end {
		end = l
	}

	value := prim
	runes := []rune(value)

	safeSubString := string(runes[start:end])

	return safeSubString
}

func ToJson(value any) (string, error) {
	result, err := json.Marshal(value)
	if err != nil {
		return "", err
	}

	return string(result), nil
}
