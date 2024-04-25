from math import abs

fn makeGood(s: String) -> String:
    var result: String = str("")

    var i: Int = 0
    while i < len(s):
        if i < len(s) - 1 and abs(ord(s[i]) - ord(s[i + 1])) == 32:
            i += 2
        else:
            result = result + s[i]
            i += 1
    return result

fn main(): 
    var input_str: String = "leEeetcode"
    var result: String = makeGood(input_str)
    print("After making the string good: ", result)
