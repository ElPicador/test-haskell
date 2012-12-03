module Main where

import Tools
import Test.HUnit

test1 = TestCase (assertEqual "last [1,2,3]" 3 (my_last [1,2,3]))
--test2 = TestCase (assertEqual "last []" Nothing (my_last []))

test3 = TestCase (assertEqual "penultimate [1,2]" 1 (penultimate [1,2]))
test4 = TestCase (assertEqual "penultimate [1,2,3]" 2 (penultimate [1,2,3]))

test5 = TestCase (assertEqual "nth 0 [1]" 1 (nth 0 [1]))
test6 = TestCase (assertEqual "nth 1 [1,2]" 2 (nth 1 [1,2]))
test7 = TestCase (assertEqual "nth 1 [1,2,3]" 2 (nth 1 [1,2,3]))
--test8 = TestCase (assertEqual "nth 15 [1,2,3]" 1 (nth 15 [1,2,3]))

tests = TestList [
		TestLabel "test1" test1,
		--TestLabel "test2" test2,
		TestLabel "test3" test3,
		TestLabel "test4" test4,
		TestLabel "test5" test5,
		TestLabel "test6" test6,
		TestLabel "test7" test7,
		--TestLabel "test8" test8
	]

main = runTestTT tests
