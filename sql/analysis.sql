-- ==========================================
-- Student Weak Subject Analysis
-- SQL Analysis
-- Database: PostgreSQL
-- ==========================================

-- ==========================================
-- 1. Number of Students by Grade
-- ==========================================

SELECT
    grade,
    COUNT(*) AS student_count
FROM student_data
GROUP BY grade
ORDER BY grade;

-- ==========================================
-- 2. Average Score by Grade
-- ==========================================

SELECT
    grade,
    ROUND(AVG(math)::numeric, 2) AS math_avg,
    ROUND(AVG(english)::numeric, 2) AS eng_avg,
    ROUND(AVG(japanese)::numeric, 2) AS jp_avg,
    ROUND(AVG(science)::numeric, 2) AS sci_avg,
    ROUND(AVG(social)::numeric, 2) AS soc_avg
FROM student_data
GROUP BY grade
ORDER BY grade;

-- ==========================================
-- 3. Overall Average Score by Subject
-- ==========================================

SELECT
    ROUND(AVG(math)::numeric, 2) AS math_avg,
    ROUND(AVG(english)::numeric, 2) AS eng_avg,
    ROUND(AVG(japanese)::numeric, 2) AS jp_avg,
    ROUND(AVG(science)::numeric, 2) AS sci_avg,
    ROUND(AVG(social)::numeric, 2) AS soc_avg
FROM student_data;

-- ==========================================
-- 4. Maximum and Minimum Score by Subject
-- ==========================================

SELECT
    ROUND(MAX(math)::numeric, 2) AS math_max,
    ROUND(MIN(math)::numeric, 2) AS math_min,

    ROUND(MAX(english)::numeric, 2) AS eng_max,
    ROUND(MIN(english)::numeric, 2) AS eng_min,

    ROUND(MAX(japanese)::numeric, 2) AS jp_max,
    ROUND(MIN(japanese)::numeric, 2) AS jp_min,

    ROUND(MAX(science)::numeric, 2) AS sci_max,
    ROUND(MIN(science)::numeric, 2) AS sci_min,

    ROUND(MAX(social)::numeric, 2) AS soc_max,
    ROUND(MIN(social)::numeric, 2) AS soc_min
FROM student_data;

-- ==========================================
-- 5. Top 10 Students by Average Score
-- ==========================================

SELECT
    student_id AS id,
    grade,
    ROUND(
        (math + english + japanese + science + social) / 5.0,
        2
    ) AS avg_score
FROM student_data
ORDER BY avg_score DESC
LIMIT 10;

-- ==========================================
-- 6. Students with Average Score Below 60
-- ==========================================

SELECT
	student_id AS id,
	grade,
	ROUND(
		(math + english + japanese + science + social) / 5.0,
		2
	) AS avg_score
FROM student_data
WHERE (math + english + japanese + science + social) / 5.0 < 60
ORDER BY avg_score ASC;

-- ==========================================
-- 7. High Attendance and High Performance Students
-- Conditions:
--   - Attendance >= 80
--   - Average Score >= 70
-- ==========================================

SELECT
	student_id AS id,
	grade,
	attendance,
	ROUND(
		(math + english + japanese + science + social) / 5.0,
		2
	) AS avg_score
FROM student_data
WHERE
	(math + english + japanese + science + social) / 5.0 >= 70
	AND attendance >= 80
ORDER BY avg_score DESC;

-- ==========================================
-- 8. Average Attendance
-- ==========================================

SELECT
	ROUND(AVG(attendance)::numeric, 2) AS attendance_avg
FROM student_data;

-- ==========================================
-- 9. Student Ranking by Average Score
-- ==========================================

SELECT
	student_id AS id,
	grade,
	ROUND(
		(math + english + japanese + science + social) / 5.0,
		2
	) AS avg_score,
	RANK() OVER (
		ORDER BY
			(math + english + japanese + science + social) / 5.0 DESC
	) AS score_rank
FROM student_data
ORDER BY score_rank;

-- ==========================================
-- 10. Correlation between Attendance and Average Score
-- ==========================================

SELECT
    ROUND(
        CORR(
            attendance,
            (math + english + japanese + science + social) / 5.0
        )::numeric,
        2
    ) AS attendance_score_corr
FROM student_data;

-- ==========================================
-- 11. Attendance and Average Score Correlation by Grade
-- ==========================================

SELECT
    grade,
    ROUND(
        CORR(
            attendance,
            (math + english + japanese + science + social) / 5.0
        )::numeric,
        2
    ) AS attendance_score_corr
FROM student_data
GROUP BY grade
ORDER BY grade;

-- End of analysis.sql