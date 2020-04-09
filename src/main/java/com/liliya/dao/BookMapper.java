package com.liliya.dao;

import com.liliya.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BookMapper {
    int addBook(Books book);//增加一个Book
    int deleteBookById(@Param(value = "bookID") int id);//根据id删除一个Book
    int updateBook(Books book);//修改一个Book
    Books queryBookById(@Param(value = "bookID")int id);//根据id查询,返回一个Book
    List<Books> queryAllBook();//查询全部Book,返回list集合
    Books queryBookByName(@Param(value = "bookName") String bookName);
}