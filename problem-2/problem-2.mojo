
fn checkRecord(attendance_record: String) -> Bool:
    var attendance_record_str: String = attendance_record

    var absent_count: Int = 0
    var late_count: Int = 0

    for i in range(len(attendance_record_str)):
        
        if attendance_record_str[i] == 'A':
            absent_count += 1
            late_count = 0
        elif attendance_record_str[i] == 'L':
            late_count += 1
        else:
            late_count = 0

        if late_count >= 3 or absent_count >= 2:
            return False
    return True


fn main():
  var leetcode_examples: List[Tuple[StringLiteral, Bool]] = List(("PPALLP", True), ("PPALLL", False))
  for i in range(len(leetcode_examples)):
    var example: Tuple[StringLiteral, Bool] = leetcode_examples[i]
    var input_string: String = example.get[0, StringLiteral]()
    var expected_result: Bool = example.get[1, Bool]()
    print("Test case " + str(i+1) + ": " + input_string + " Expected Result: " + str(expected_result))
    if checkRecord(input_string) == expected_result:
      print("Test case " + str(i+1) + " passed")
    else:
      print("Test case " + str(i+1) + " failed")


