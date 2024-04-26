from math import abs

fn makeGood(s: String) -> String:
    var result: String = str("")
    var all_found: Bool = False
    var loopCount: Int = 0
    var current_string: String = s
    while not all_found:
        all_found = True
        var i: Int = 0
        while i < len(current_string):
            if i < len(current_string) - 1 and abs(ord(current_string[i]) - ord(current_string[i + 1])) == 32:
                i += 2
                all_found = False
            else:
                result = result + current_string[i]
                i += 1
        if not all_found:
            current_string = result
            result = str("")
    return result

fn main(): 
  var leetcode_examples: List[Tuple[StringLiteral, StringLiteral]] = List(("leEeetcode", "leetcode"), ("abBAcC", ""), ("s", "s"))
  for i in range(len(leetcode_examples)):
    var example: Tuple[StringLiteral, StringLiteral] = leetcode_examples[i]
    var input_string: String = example.get[0, StringLiteral]()
    var expected_result: String = example.get[1, StringLiteral]()
    print("Test case " + str(i+1) + ": " + input_string + " Expected Result: " + expected_result)
    if makeGood(input_string) == expected_result:
      print("Test case " + str(i+1) + " passed")
    else:
      print("Test case " + str(i+1) + " failed")
