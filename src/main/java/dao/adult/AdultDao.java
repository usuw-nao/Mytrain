package dao.adult;

import java.util.List;

import domain.Adult;

public interface AdultDao {

	List<Adult> findAll() throws Exception;

	// ログイン認証用adult１件分
	Adult findByLoginAndPass(String login, String pass) throws Exception;

	// IDを使ってひとりぶんを取り出す？？
	public Adult findById(Integer id) throws Exception;

	// 更新（住所、メールアドレス、ニックネーム、パス）
	void update(Integer id, String login, String nickName, String email, String address) throws Exception;

	// イベントに参加したら回数が増える
	void update(Integer id) throws Exception;
	//クイズに正解したらポイントが１０増える
	void update2(Integer id)throws Exception;

	// 削除
	void delete(Adult adult) throws Exception;

	// 新規登録,追加
	void insert(Adult adult) throws Exception;

}