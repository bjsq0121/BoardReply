package org.zerock.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.MessageVO;
import org.zerock.persistence.MessageDAO;
import org.zerock.persistence.PointDAO;

@Service
public class MessageServiceImpl implements MessageService{

	@Inject
	private MessageDAO messageDAO;
	
	@Inject
	private PointDAO pointDAO;
	
	
	@Override
	public void addMessage(MessageVO vo) throws Exception {
		// TODO Auto-generated method stub
		messageDAO.create(vo);
		pointDAO.updatePoint(vo.getSender(), 10);
	}

	@Override
	public MessageVO readMessage(String userid, Integer mid) throws Exception {
		// TODO Auto-generated method stub
		
		messageDAO.updateState(mid);
		pointDAO.updatePoint(userid, 5);
	
		return messageDAO.readMessage(mid);
	}

}
