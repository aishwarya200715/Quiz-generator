# Simple Quiz Generator in Python

quiz_questions = [
    {
        "question": "1. What is the capital of India?",
        "options": ["A. Mumbai", "B. New Delhi", "C. Kolkata", "D. Chennai"],
        "answer": "B"
    },
    {
        "question": "2. Which language is primarily used for AI and Machine Learning?",
        "options": ["A. Java", "B. C++", "C. Python", "D. HTML"],
        "answer": "C"
    },
    {
        "question": "3. What does CPU stand for?",
        "options": ["A. Central Processing Unit",
                    "B. Computer Personal Unit",
                    "C. Central Program Utility",
                    "D. Control Processing Unit"],
        "answer": "A"
    },
    {
        "question": "4. Which planet is known as the Red Planet?",
        "options": ["A. Earth", "B. Venus", "C. Mars", "D. Jupiter"],
        "answer": "C"
    },
    {
        "question": "5. What is the output of 5 + 3 * 2?",
        "options": ["A. 16", "B. 11", "C. 13", "D. 10"],
        "answer": "B"
    }
]

score = 0

print("===== Welcome to the Quiz Generator =====\n")

for q in quiz_questions:
    print(q["question"])
    for option in q["options"]:
        print(option)

    user_answer = input("Enter your answer (A/B/C/D): ").strip().upper()

    if user_answer == q["answer"]:
        print("Correct!\n")
        score += 1
    else:
        print(f"Wrong! The correct answer is {q['answer']}.\n")

print("===== Quiz Completed =====")
print(f"Your Score: {score}/{len(quiz_questions)}")

percentage = (score / len(quiz_questions)) * 100
print(f"Percentage: {percentage:.2f}%")

if percentage >= 80:
    print("Grade: Excellent!")
elif percentage >= 60:
    print("Grade: Good!")
elif percentage >= 40:
    print("Grade: Average")
else:
    print("Grade: Needs Improvement")
