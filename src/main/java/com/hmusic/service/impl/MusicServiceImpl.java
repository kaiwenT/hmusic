package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.entity.Music;
import com.hmusic.service.MusicService;

@Service(value = "musicService")
@Transactional
public class MusicServiceImpl implements MusicService {

	@Autowired
	private MusicDao musicDao;
	
	@Override
	public void add(Music music) {
		// TODO Auto-generated method stub
		musicDao.add(music);
	}

	@Override
	public void update(Music music) {
		// TODO Auto-generated method stub
		musicDao.update(music);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		musicDao.deleteById(id);
	}

	@Override
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public Music findByID(Integer id) {
		// TODO Auto-generated method stub
		return musicDao.findByID(id);
	}

	@Override
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<Music> findAll() {
		// TODO Auto-generated method stub
		return musicDao.findAll();
	}

}
