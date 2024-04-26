fn findTheDifference(s:String, t:String) -> String:
    var result: String = ""
    var shorter_string: String = ""
    var longer_string: String = ""
    if len(s) >= len(t):
        shorter_string = t
        longer_string = s
    else:
        shorter_string = s
        longer_string = t
    for i in range(len(longer_string)):
        var found: Bool = False
        for j in range(len(shorter_string)):
            if longer_string[i] == shorter_string[j]:
                found = True
                break
        if not found:
            result += longer_string[i]
    return result

fn main():
  var leetcode_examples: List[Tuple[StringLiteral, StringLiteral, StringLiteral]] = List(("abcd", "abcde", "e"), ("", "y", "y"), ("wxyz", "yzwxn", "n"), ("hijkl", "jlkih", ""))
  for i in range(len(leetcode_examples)):
    var example: Tuple[StringLiteral, StringLiteral, StringLiteral] = leetcode_examples[i]
    var input_string1: String = example.get[0, StringLiteral]()
    var input_string2: String = example.get[1, StringLiteral]()
    var expected_result: String = example.get[2, StringLiteral]()
    print("Test case " + str(i+1) + ": " + input_string1 + ":" + input_string2 + " Expected Result: " + expected_result)
    var result: String = findTheDifference(input_string1, input_string2)
    if result == expected_result:
      print("Test case " + str(i+1) + " passed")
    else:
      print("Test case " + str(i+1) + " failed")
