package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import domain.Ivent;

public class IventDaoImpl implements IventDao {
	private DataSource ds;

	public IventDaoImpl(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<Ivent> findAll() throws Exception {
		List<Ivent> iventList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "select * from ivent order by day asc";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				iventList.add(mapToIvent(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return iventList;
	}

	@Override
	public Ivent findById(Integer id) throws Exception {
		Ivent ivent = new Ivent();
		try (Connection con = ds.getConnection()) {
			String sql = "select*from ivent where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setObject(1, id, Types.INTEGER);
			ResultSet rs = stmt.executeQuery();
			if (rs.next() == true) {
				ivent = mapToIvent(rs);
			}
		} catch (Exception e) {
			throw e;
		}
		return ivent;
	}

	private Ivent mapToIvent(ResultSet rs) throws Exception {
		Ivent ivent = new Ivent();
		ivent.setId(rs.getInt("id"));
		ivent.setLogin(rs.getString("login"));
		ivent.setName(rs.getString("name"));
		ivent.setDetail(rs.getString("detail"));
		ivent.setPlace(rs.getString("place"));
		ivent.setDay(rs.getString("day"));
		ivent.setSday(rs.getDate("sday"));
		return ivent;

	}

	@Override
	public void insert(Ivent ivent) throws Exception {
		try {
			Connection con = ds.getConnection();

			String sql = "insert into ivent values(?,?,?,?,?,?,now())";
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setObject(1, ivent.getId(), Types.INTEGER);
			stmt.setString(2, ivent.getLogin());
			stmt.setString(3, ivent.getName());
			stmt.setString(4, ivent.getDetail());
			stmt.setString(5, ivent.getPlace());
			stmt.setString(6, ivent.getDay());
		

			stmt.executeUpdate();

		} catch (Exception e) {
			throw new Exception(e);
		}
	}

	@Override
	public List<Ivent> findAll2() throws Exception {
		List<Ivent> iventList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "select * from ivent where login is null";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				iventList.add(mapToIvent(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return iventList;
	}

	@Override
	public List<Ivent> findByLoginAndDay(String login, String day) throws Exception {
		List<Ivent> iventList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "SELECT * FROM ivent "
					+ " WHERE login = ?"
					+ " AND day = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, login);
			stmt.setString(2, day);			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				iventList.add(mapToIvent(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return iventList;
	}
}
