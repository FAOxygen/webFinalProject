package com.fao.dao;
import com.fao.pojo.Books;
import org.apache.ibatis.annotations.Param;
import java.util.List;
/**
 * @author BJ
 * @date 2022/7/22 21:21
 * 接口
 */
public interface BookMapper {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBookById(@Param("bookID") int id);
    //更新一本书
    int updateBook(Books books);
    //查询一本书
    Books queryBookById(int id);
    //查询全部书
    List<Books> queryAllBook();

    //根据id查询,返回一个Book
    Books queryBookByName(String bookName);
}