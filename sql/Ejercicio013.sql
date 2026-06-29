/*
Julia just finished conducting a coding contest, and she needs your help assembling 
the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved 
full scores for more than one challenge. Order your output in descending order by the total number 
of challenges in which the hacker earned a full score. If more than one hacker received full scores 
in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.


Difficulty: The difficult_level is the level of difficulty of the challenge, 
and score is the maximum score that can be achieved for a challenge at that 
difficulty level.



Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the 
hacker who created the challenge, and difficulty_level is the level of difficulty of the 
challenge.


Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker 
who made the submission, challenge_id is the id of the challenge that the submission belongs to, 
and score is the score of the submission.


*/

SELECT S.hacker_id, H.name
FROM Submissions S
INNER JOIN HACKERS H ON S.hacker_id = H.hacker_id
LEFT JOIN CHALLENGES C ON S.challenge_id = C.challenge_id
INNER JOIN DIFFICULTY D ON C.Difficulty_level = D.Difficulty_level  
AND S.SCORE = D.SCORE
GROUP BY S.hacker_id, H.name
HAVING COUNT(S.hacker_id)> 1
ORDER BY COUNT(S.hacker_id) DESC,
S.hacker_id ASC