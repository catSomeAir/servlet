package student;

import java.util.ArrayList;

public class StudentDAO {
	//ArrayList<StudentDTO> 를 10건 리턴하는 메소드 작성
	// getManualList();
	// 접근제한자 리턴타입 메소드이름(){
	// }
	public ArrayList<StudentDTO> getManualLIst(){
		ArrayList<StudentDTO> list = new ArrayList<StudentDTO>();
		for (int i = 0; i < 10; i++) {
			list.add(new StudentDTO("a", "b", "c", "d", "e", i));
		}
		return list;
	}
}
