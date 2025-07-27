📊 LeetCode SQL Problem Solving
This repository contains my solutions to SQL problems from LeetCode, a platform for practicing coding and database skills.

🧠 Purpose
Improve SQL proficiency through real-world-style problems.

Track progress and prepare for technical interviews.

Build a public portfolio of clean and well-explained SQL queries.

📁 Structure
sql
Copy
Edit
leetcode-sql/
│
├── Easy/
│   ├── 175-combine-two-tables.sql
│   ├── 176-second-highest-salary.sql
│   └── ...
│
├── Medium/
│   ├── 570-managers-with-at-least-5-direct-reports.sql
│   ├── 534-game-play-analysis-iii.sql
│   └── ...
│
├── Hard/
│   └── 601-human-traffic-of-stadium.sql
│
└── README.md
✅ Topics Covered
JOIN, LEFT JOIN, INNER JOIN

GROUP BY, HAVING, COUNT, SUM

WINDOW FUNCTIONS (RANK(), ROW_NUMBER(), LEAD())

DATE FUNCTIONS, CASE WHEN

CTEs, Subqueries

🚀 How to Use
Each file is named using the format:
[problem-number]-[problem-title].sql

Each solution is written in MySQL-compatible syntax, tested on LeetCode's platform.

Problem links are included in comments at the top of each SQL file.

📘 Example
sql
Copy
Edit
-- Problem: https://leetcode.com/problems/second-highest-salary/
-- Difficulty: Easy

SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
🧩 Profile & Stats
Feel free to check out my LeetCode profile for more progress on SQL, Python, and algorithm challenges.

⭐️ Contributions
Suggestions, issues, and improvements are welcome!
You can fork the repo, solve problems in your own style, and open a pull request.

