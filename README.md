# Updated Testing: Python vs Mojo

## Changes
1. Mojo versions support and pass all the leetcode suggested test cases from the links.
2. Mojo versions no longer reference anything Python
3. Mojo versions are now compiled versus ran against the interpreter. `mojo build` versus  `mojo run`

## Testing Environment
Hardware: Macbook Pro, with M2 Max Processor, 64GB Ram
Operating System: macOS Sonoma 14.3.1
Python: Python v3.12
Mojo: Mojo v24.2.1

## Results

Updated testing results show the complete opposite of the original authors results. Mojo performed significantly faster in all tests.

## Personal Feedback / Interpretation

Mojo is ment to be COMPILED. 

## What follows if from the original author

### Language Comparison: Python vs Mojo

Hey there! I am new to both Python and Mojo languages. In this repository, I went on a mission to explore and compare these two languages from scratch, knowing only the basics of programming (started with C++). It contains a comparison of both the languages, from the perspective of a newbie.

> I would love if people can verify whether or not my benchmarking is correct. If you can, please send an Issue or Pull Request with any changes and I'd be glad to re-run your request.

### Programs

1. **Length of last word** : returning the length of the last word in the string.
2. **Student attendance record** : Whether or not the student is eligible for an attendance award
3. **Remove repeating letters** : Removing the adjacent letters (one being capital) in a string.
4. **Detect Capital letter usage** : Returning true if the usage of capitals in it is right.
5. **Find the difference:** : Returning the extra letter among 2 strings
   

### Benchmarking and Testing

The performance of both languages was benchmarked using [Hyperfine](https://github.com/sharkdp/hyperfine). Programs were tested and outputs were compared to see which one of them was faster.

### Results
For all the codes, Python ran significantly faster than Mojo and beat Mojo, in speed, by a huge margin

### Comparing the advantages of both

1: Python installation was much simpler compared to Mojo. Installing Mojo was not user-friendly; it would have been better if there was a one-click installation option for Mojo on Windows, similar to Python.

2: The syntax of Mojo and Python was quite similar, with the main difference being that in Mojo, you need to use Python functions by importing them. For example, to take user input, you have to import the "input" function from Python. This made Python easier to learn

3: Mojo provided helpful explanations with each error, making it easier for me to understand and identify my mistakes. Python, on the other hand, lacked this feature, which is an advantage of Mojo. 

4: The code itself requires a main() function to be called in Mojo for it to run while Python runs as is.

5: The Discord community of Mojo is very active and helpful. Their Discord has a chatbot which guides through every inconvenience with ease and is up to date with all the errors that I encountered while coding in Mojo; the bot is equipped with the latest info regarding Mojo, so was a very helpful feature

6: Python proved to be more user-friendly for me, mainly due to its proper documentation (because of it being older than Mojo). Moreover, the commands in Python were straightforward and simple to use, unlike Mojo, where there were some instances like for example me clearly stating the variable type (requiring explicit variable declarations), a step which I didnt have to do in Python