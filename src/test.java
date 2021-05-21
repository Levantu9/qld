import java.util.ArrayList;

import dao.Mscoredao;
import dao.Scholasticdao;
import dao.Scoredao;
import dao.Semesterdao;
import dao.Userdao;
import model.Semester;
import model.User;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		Semesterdao dao = new Semesterdao();
		System.out.println(dao.getAll().get(1).getSemester());
		ArrayList<Semester>listsm = new ArrayList();
		Semester sm1 = new Semester(1,"hoc ky 1");
		Semester sm2 = new Semester(1,"hoc ky 2");
		Semester sm3 = new Semester(1,"hoc ky 3");
		listsm.add(sm1);listsm.add(sm2);listsm.add(sm3);
		System.out.println(listsm.get(1).getSemester());
		System.out.println(dao.getAll().get(1).getSemester().equals(listsm.get(1).getSemester()));
	}

}
