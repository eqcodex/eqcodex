package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/pkg/errors"
)

func main() {
	err := run()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	fmt.Println("ran successfully")
}

func run() error {
	p, err := New()
	if err != nil {
		return errors.Wrap(err, "new parser")
	}
	f, err := os.Open("spells_us-2019-10-10.txt")
	if err != nil {
		return err
	}
	scanner := bufio.NewScanner(f)

	lineNumber := 0
	for scanner.Scan() {
		err = p.Parse(scanner.Text())
		if err != nil {
			return errors.Wrap(err, fmt.Sprintf("line %d:", lineNumber))
		}
	}
	return nil
}
