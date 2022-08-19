package dao;

import java.sql.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import domain.BlogTop;

public class BlogTopDaoImpl implements BlogTopDao {
	private DataSource ds;

	public BlogTopDaoImpl(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<BlogTop> findAll() throws Exception {
		List<BlogTop> blogTopList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "select * from blog";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				blogTopList.add(mapToBlogTop(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return blogTopList;
	}

	@Override
	public BlogTop findById(Integer id) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public void update(String text, String title, Date bday) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void delete(BlogTop blogTop) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void insert(BlogTop blogTop) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "insert into blog (name,title,text,id_type,bday )"
		                  + " values(?,?,?,?,now())";

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, blogTop.getName());
			stmt.setString(2, blogTop.getTitle());
			stmt.setString(3, blogTop.getText());
			stmt.setString(4, blogTop.getIdType());
			
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	private BlogTop mapToBlogTop(ResultSet rs) throws Exception {
		BlogTop blogTop = new BlogTop();
		blogTop.setId(rs.getInt("id"));
		blogTop.setName(rs.getString("name"));
		blogTop.setTitle(rs.getString("title"));
		blogTop.setText(rs.getString("text"));
		blogTop.setIdType(rs.getString("id_type"));
		blogTop.setBday(rs.getDate("bday"));

		return blogTop;
	}

}
