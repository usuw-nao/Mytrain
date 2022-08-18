package dao;

import java.sql.Date;
import java.util.List;

import domain.BlogTop;

public interface BlogTopDao {
	List<BlogTop> findAll() throws Exception;

	// IDを使ってひとりぶんを取り出す
	public BlogTop findById(Integer id) throws Exception;

	// 更新（記事、日にち）
	void update(String text, String title, Date bday) throws Exception;

	// 記事削除
	void delete(BlogTop blogTop) throws Exception;

	// 記事追加
	void insert(BlogTop blogTop) throws Exception;

}
