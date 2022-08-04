package com.lbi.service;

import java.util.List;

import com.lbi.domain.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> list(int bno) throws Exception;
	
	public void write(ReplyVO vo) throws Exception;
	
	public void modify(ReplyVO vo) throws Exception;
	
	public void delete(ReplyVO vo) throws Exception;

}
