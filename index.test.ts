import { expect, test } from "bun:test";
import { add } from ".";

test("Add funciona", () => {
  expect(add(14, 14)).toBe(28);
  expect(add(2, 3)).toBe(5);
  expect(add(3, 43)).toBe(46);
  expect(add(14, 23)).toBe(37);
  expect(add(41, 14)).toBe(55);
});