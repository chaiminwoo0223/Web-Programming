package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.Course;

@Mapper
public interface CourseMapper {

	@Select("SELECT * FROM course WHERE id = #{id}")
	Course findById(int id);

    @Select("""
            SELECT c.*, p.name professorName
            FROM course c LEFT JOIN professor p ON c.professorId = p.id """)
    List<Course> findAll();

    @Insert("""
            INSERT course (year, semester, gubun, code, title, professorName, sigan)
            VALUES (#{year}, #{semester}, #{gubun}, #{code}, #{title}, #{professorName}, #{sigan}) """)
    @Options(useGeneratedKeys=true, keyProperty="id")
    void insert(Course course);

    @Update("""
            UPDATE course SET year=#{year}, semester=#{semester}, gubun=#{gubun}, code=#{code},
            title=#{title}, professorName=#{professorName}, sigan=#{sigan} WHERE id=#{id} """)
    void update(Course course);

    @Delete("DELETE FROM course WHERE id=#{id}")
    void delete(int id);

}