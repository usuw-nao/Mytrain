package dao.adult;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;

import java.util.List;

import javax.sql.DataSource;

import org.mindrot.jbcrypt.BCrypt;

import com.mysql.cj.conf.ConnectionUrl.Type;

import domain.Adult;

public class AdultDaoImpl implements AdultDao {
	private DataSource ds;

	public AdultDaoImpl(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<Adult> findAll() throws Exception {
		List<Adult> adultList = new ArrayList<>();

		try (Connection con = ds.getConnection()) {
			String sql = "select  nick_name,email,point,address," + "age, name,ivent,distance,start_date,end_date "
					+ " from adult where login=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "login");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				adultList.add(mapToAdult(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return adultList;

	}

	@Override
	public Adult findByLoginAndPass(String login, String pass) throws Exception {
		// １件分取り出す
		Adult adult = null;
		try (Connection con = ds.getConnection()) {
			String sql = "select * from adult where login=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				if (BCrypt.checkpw(pass, rs.getString("pass"))) {
					adult = mapToAdult(rs);
				}
			}
		} catch (Exception e) {
			throw e;
		}
		return adult;
	}

	@Override
	public Adult findById(Integer id) throws Exception {
		Adult adult = new Adult();

		try (Connection con = ds.getConnection()) {
			String sql = "select login, nick_name,email,point,address,"
					+ "age, name,ivent,distance,start_date,end_date " + " from adult where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setObject(1, id, Types.INTEGER);
			ResultSet rs = stmt.executeQuery();
			if (rs.next() == true) {
				adult = mapToAdult(rs);
			}
		} catch (Exception e) {
			throw e;
		}
		return adult;

	}
	// Idの分を入れて5個にしようね！

	@Override
	public void update(Integer id, String login, String nickName, String email, String address) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "update adult set login=?, nick_name=?, email=?, address=? where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, login);
			stmt.setString(2, nickName);
			stmt.setString(3, email);
			stmt.setString(4, address);
			stmt.setObject(5, id, Types.INTEGER);

			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	@Override
	public void update(Integer id) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "update adult set ivent = " + " ivent + 1 where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setObject(1, id);
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	@Override
	public void update2(Integer id) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "update adult set point = " + " point + 10 where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setObject(1, id);
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	@Override
	public void delete(Adult adult) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "delete from adult where id=? ";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setObject(1, adult.getId(), Types.INTEGER);
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	@Override
	public void insert(Adult adult) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "insert into adult (login,pass,nick_name,type_id," + " email,name,address,age,"
					+ " point,ivent )" + " values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, adult.getLogin());
			stmt.setString(2, BCrypt.hashpw(adult.getPass(), BCrypt.gensalt()));
			stmt.setString(3, adult.getNickName());
			stmt.setObject(4, adult.getTypeId(), Types.INTEGER);
			stmt.setString(5, adult.getEmail());
			stmt.setString(6, adult.getName());
			stmt.setString(7, adult.getAddress());
			stmt.setObject(8, adult.getAge(), Types.INTEGER);
			stmt.setObject(9, adult.getPoint(), Types.INTEGER);
			stmt.setObject(10, adult.getIvent(), Types.INTEGER);

			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	private Adult mapToAdult(ResultSet rs) throws Exception {
		Adult adult = new Adult();
		adult.setId(rs.getInt("id"));
		adult.setLogin(rs.getString("login"));
		adult.setPass(rs.getString("pass"));
		adult.setNickName(rs.getString("nick_name"));
		adult.setTypeId(rs.getInt("type_id"));
		adult.setEmail(rs.getString("email"));
		adult.setName(rs.getString("name"));
		adult.setAddress(rs.getString("address"));
		adult.setAge(rs.getInt("age"));
		adult.setPoint(rs.getInt("point"));
		adult.setIvent(rs.getInt("ivent"));
		adult.setDistance(rs.getString("distance"));
		adult.setStartDate(rs.getDate("start_date"));
		adult.setEndDate(rs.getDate("end_date"));

		return adult;
	}

}