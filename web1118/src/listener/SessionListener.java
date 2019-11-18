package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println("한 명의 유저가 접속했습니다.");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("한 명의 유저가 접속을 해제 했습니다.");
	}

}
