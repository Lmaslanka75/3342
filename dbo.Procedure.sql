CREATE PROCEDURE [dbo].[getCourseTitle]
	@semester varchar(max)
AS
	SELECT * FROM Course WHERE Semester = @semester
RETURN 0
