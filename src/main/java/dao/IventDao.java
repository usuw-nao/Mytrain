package dao;

import java.util.List;

import domain.Ivent;

public interface IventDao {
	// 全部のイベントデータを取得
	List<Ivent> findAll() throws Exception;

	// IDを使ってひとりぶんを取り出す？？
	public Ivent findById(Integer id) throws Exception;

	void insert(Ivent ivent) throws Exception;
	
	//loginがnullのだけ出す
	List<Ivent>findAll2()throws Exception;

}