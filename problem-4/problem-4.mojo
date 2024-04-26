
fn detectCapitalUse(word: String) -> Bool:
    var uinput: String = word

    var number_of_capital_letters: Int = 0
    for i in range(len(uinput)):
        var letter: String = uinput[i]
        if ord(letter) < 97:
            number_of_capital_letters += 1

    var number_of_small_letters: Int = len(uinput) - number_of_capital_letters
    if number_of_capital_letters == len(uinput) or number_of_small_letters == len(uinput) or (ord(word[0]) < 97 and number_of_capital_letters == 1):
        return True
    else:
        return False

fn main():
  var leetcode_examples: List[Tuple[StringLiteral, Bool]] = List(("USA", True), ("FlaG", False), ("Leetcode", True), ("leetcode", True))
  for i in range(len(leetcode_examples)):
    var example: Tuple[StringLiteral, Bool] = leetcode_examples[i]
    var input_string: String = example.get[0, StringLiteral]()
    var expected_result: Bool = example.get[1, Bool]()
    print("Test case " + str(i+1) + ": " + input_string + " Expected Result: " + str(expected_result))
    if detectCapitalUse(input_string) == expected_result:
      print("Test case " + str(i+1) + " passed")
    else:
      print("Test case " + str(i+1) + " failed")












