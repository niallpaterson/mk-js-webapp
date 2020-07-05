#!/usr/bin/env zsh

echo 'import sumNumber from "./testJest.js";

test("test test", () => {
  expect(sumNumber(1, 2)).toBe(3);
});' > testJest.test.js
