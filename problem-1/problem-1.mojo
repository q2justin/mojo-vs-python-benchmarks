from collections import List

fn lengthOfLastWord(enterword: String) -> Int:
  var count: Int = 0
  for i in range(len(enterword)-1, -1, -1):
    if enterword[i] != " ":
      count = count + 1
    elif count > 0:
      break
    
  return count


fn main():
  var leetcode_examples: List[Tuple[StringLiteral, Int]] = List(("Hello World", 5), ("   fly me   to   the moon  ", 4), ("luffy is still joyboy", 6))
  for i in range(len(leetcode_examples)):
    var example: Tuple[StringLiteral, Int] = leetcode_examples[i]
    var input_string: String = example.get[0, StringLiteral]()
    var expected_result: Int = example.get[1, Int]()
    print("Test case " + str(i+1) + ": " + input_string + " Expected Result: " + str(expected_result))
    if lengthOfLastWord(input_string) == expected_result:
      print("Test case " + str(i+1) + " passed")
    else:
      print("Test case " + str(i+1) + " failed")
  


