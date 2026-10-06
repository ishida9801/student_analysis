Student Academic Performance Analysis Report
1. Analysis Objective

In preparatory schools and private tutoring schools, understanding students' learning progress and academic performance is important for providing appropriate educational support.

In this report, I analyze a dataset of 300 fictional students using Python and pandas. The analysis focuses on the following areas:

Average scores by subject
Differences in academic performance by grade
Differences in English scores across grades
Correlations between subjects
Relatively weaker subjects
The relationship between attendance and average scores
The relationship between attendance and average scores by grade

Through these analyses, I practice fundamental data analysis techniques, including data aggregation, visualization, and correlation analysis using Python.

2. Dataset

A fictional dataset containing information on 300 students was generated using Python.

For each student, the dataset contains their grade, scores in five subjects, and attendance rate.

Variables
Variable	Description
student_id	Student ID
grade	Grade level (G1–G3)
math	Mathematics score
english	English score
japanese	Japanese score
science	Science score
social	Social Studies score
attendance	Attendance rate (%)

The test scores and attendance rates were generated using random values.

Therefore, this fictional dataset cannot be used to determine causal relationships or general trends in real-world educational settings.

However, it provides a useful dataset for practicing data analysis techniques such as aggregation, visualization, and correlation analysis.

3. Analysis Environment
Python
pandas
NumPy
matplotlib
JupyterLab
4. Number of Students by Grade

The number of students in each grade was calculated to examine the composition of the dataset.

Results
Grade	Number of Students
G1	96
G2	104
G3	100
Total	300

The number of students in each grade ranged from 96 to 104, indicating that there was no major imbalance in the number of students across grades.

Discussion

Because the number of students in each grade was relatively balanced, the potential impact of sample size imbalance on the subsequent grade-level analyses is considered to be relatively small.

5. Average Score by Grade

The average score for each subject was calculated by grade to compare academic performance across grades.

Results
Subject	G1	G2	G3
Mathematics	52.10	50.20	53.90
English	49.74	58.12	66.44
Japanese	48.14	57.59	65.04
Science	49.86	51.00	53.50
Social Studies	54.26	55.45	62.65

Average scores in English, Japanese, and Social Studies increased as grade level increased.

In contrast, the differences across grades were relatively small in Mathematics and Science.

Discussion

The average scores for English and Japanese increased substantially from G1 to G3. English increased from 49.74 to 66.44, while Japanese increased from 48.14 to 65.04.

On the other hand, Mathematics and Science showed relatively small changes across grades.

These results indicate that the pattern of academic performance across grades differed depending on the subject.

However, since the dataset is fictional, these differences cannot be interpreted as actual effects of grade level or differences in learning content.

6. Differences in English Scores by Grade

The average English score was compared across grades to examine differences in English performance by grade level.

Results
Grade	Average English Score
G1	49.74
G2	58.12
G3	66.44

The average English score increased as grade level increased.

The average score increased from 49.74 in G1 to 66.44 in G3, a difference of approximately 16.7 points.

Discussion

In this dataset, the average English score showed an upward trend across grade levels.

However, differences in average scores alone do not indicate whether the differences are statistically significant.

In addition, because the dataset is fictional, the observed differences cannot be interpreted as representing actual differences in English performance across grade levels.

7. Subject Relationships

The correlations between selected pairs of subjects were analyzed to examine relationships between students' performance in different subjects.

The following two pairs were examined:

Mathematics and Science
English and Japanese
Results
Subject Pair	Correlation
Mathematics × Science	0.89
English × Japanese	0.91

A strong positive correlation was observed between Mathematics and Science (0.89), as well as between English and Japanese (0.91).

In contrast, the correlations between Mathematics and English (0.06), Mathematics and Japanese (0.08), Science and English (0.06), and Science and Japanese (0.06) were very weak.

Discussion

Students with higher Mathematics scores tended to also have higher Science scores. Similarly, students with higher English scores tended to have higher Japanese scores.

The correlation between English and Japanese was particularly strong, at 0.91.

On the other hand, very weak correlations were observed between the mathematics/science group and the English/Japanese group.

These results suggest that, within this dataset, performance tended to be more strongly associated between certain subject pairs.

However, correlation does not imply causation. For example, a high correlation between English and Japanese does not mean that higher English performance directly causes higher Japanese performance.

Furthermore, because the dataset is fictional, these relationships cannot necessarily be generalized to real students.

8. Weak Subject Analysis

The average score for each subject was calculated and sorted in ascending order to identify subjects with relatively lower average scores among the students.

Results
Rank	Subject	Average Score
1	Science	51.47
2	Mathematics	52.04
3	Japanese	57.05
4	Social Studies	57.47
5	English	58.21

Science had the lowest average score at 51.47, followed by Mathematics at 52.04.

English had the highest average score at 58.21.

Discussion

In this dataset, Science and Mathematics had relatively lower average scores compared with the other subjects.

However, the difference between the lowest average score (Science: 51.47) and the highest average score (English: 58.21) was only 6.74 points. Therefore, it would be more appropriate to describe Science and Mathematics as subjects with relatively lower average scores rather than clearly defining them as weak subjects.

In a real educational setting, this type of analysis could be used to identify subjects that may require additional instruction or adjustments to students' learning plans.

Because the dataset is fictional, these results do not necessarily represent the strengths and weaknesses of actual students.

9. Attendance and Academic Performance

The relationship between students' attendance rates and academic performance was analyzed by calculating each student's average score across the five subjects and examining its correlation with attendance.

Results

The correlation between attendance rate and average score was 0.39.

The scatter plot also showed an overall upward trend, indicating that students with higher attendance rates tended to have higher average scores.

Discussion

A weak to moderate positive correlation was observed between attendance rate and average score.

In other words, within this dataset, students with higher attendance rates tended to have higher average scores.

However, the correlation coefficient of 0.39 does not indicate a very strong relationship. Therefore, students' academic performance cannot be explained by attendance alone.

Furthermore, correlation does not imply causation. The results do not demonstrate that higher attendance directly leads to better academic performance.

In a real educational dataset, other factors such as study time, learning habits, and previous academic performance would also need to be considered.

10. Attendance and Academic Performance by Grade

Chapter 9 examined the overall relationship between attendance and average score. In this chapter, the correlation was calculated separately for each grade to determine whether the relationship differs by grade level.

Results
Grade	Correlation between Attendance and Average Score
G1	0.24
G2	0.43
G3	0.57

A positive correlation was observed in all three grades.

The correlation coefficient increased from 0.24 in G1 to 0.43 in G2 and 0.57 in G3. This indicates that the relationship between attendance and average score became stronger across the grades in this dataset.

Discussion

The relationship between attendance and average score was relatively weak in G1, while stronger positive correlations were observed in G2 and G3.

G3 showed the strongest correlation, with a coefficient of 0.57.

These results indicate that the strength of the relationship between attendance and academic performance differed by grade in this dataset.

However, the differences in correlation coefficients do not demonstrate that the effect of attendance on academic performance becomes stronger as students advance to higher grades.

Because the dataset is fictional, these results should not be interpreted as evidence of a general relationship between attendance and academic performance in real educational settings.

11. Discussion

This analysis examined students' academic performance from three perspectives: grade level, subject performance, and attendance.

The comparison of average scores by grade showed that English, Japanese, and Social Studies tended to have higher average scores at higher grade levels. In particular, the average English score increased from 49.74 in G1 to 66.44 in G3. In contrast, Mathematics and Science showed relatively small changes across grades. These results indicate that patterns of academic performance across grades differed depending on the subject.

The correlation analysis showed strong positive correlations between Mathematics and Science (0.89) and between English and Japanese (0.91). In contrast, very weak correlations were observed between the mathematics/science group and the English/Japanese group. This suggests that, within this dataset, performance tended to be more strongly associated between certain subject pairs.

The subject-level analysis showed that Science had the lowest average score at 51.47, followed by Mathematics at 52.04, while English had the highest average score at 58.21. However, the differences between subjects were not particularly large, so Science and Mathematics should be interpreted as relatively lower-scoring subjects rather than clearly defined weak subjects.

The analysis of attendance and academic performance showed a positive correlation of 0.39 between attendance rate and average score. When analyzed by grade, the correlation coefficients were 0.24 for G1, 0.43 for G2, and 0.57 for G3, showing a trend toward stronger correlations in higher grades.

However, these correlations do not establish causal relationships. For example, higher attendance does not necessarily directly lead to higher academic performance. Other factors, such as study time and learning habits, may influence both attendance and academic performance.

Finally, the dataset used in this analysis was artificially generated using Python. Therefore, the observed patterns cannot be directly generalized to actual students or educational settings. Using real-world educational data, incorporating additional variables, and applying statistical tests or time-series analysis could provide more reliable and practical insights.

12. Conclusion

This analysis used Python and pandas to analyze a fictional dataset of 300 students, focusing on academic performance by grade, relationships between subjects, relatively weaker subjects, and the relationship between attendance and average scores.

The analysis showed that average scores in English, Japanese, and Social Studies tended to increase with grade level, while Mathematics and Science showed relatively smaller changes. Strong positive correlations were also observed between Mathematics and Science and between English and Japanese.

In addition, attendance rate showed a positive correlation with average score, with the strongest correlation observed among G3 students.

However, because the dataset is fictional, these results cannot be used to determine causal relationships or general trends in real educational settings.

Through this project, I practiced data aggregation, correlation analysis, visualization, and interpretation using pandas and Python. In the future, I would like to develop this analysis further by using a dataset with characteristics closer to real-world educational data and applying statistical tests and more advanced analytical techniques.
