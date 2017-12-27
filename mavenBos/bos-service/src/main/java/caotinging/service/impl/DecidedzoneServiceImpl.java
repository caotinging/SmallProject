package caotinging.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import caotinging.dao.IDecidedzoneDao;
import caotinging.dao.IStaffDao;
import caotinging.dao.ISubareaDao;
import caotinging.domain.Staff;
import caotinging.domain.Subarea;
import caotinging.service.IDecidedzoneService;

@Service
@Transactional
public class DecidedzoneServiceImpl implements IDecidedzoneService {
	
	@Autowired
	private IDecidedzoneDao decidedzoneDao;
	@Autowired
	private IStaffDao staffDao;
	@Autowired
	private ISubareaDao subareaDao;
	
	@Override
	public List<Staff> getNDelStaff() {
		List<Staff> list = staffDao.getNDelStaff();
		return list;
	}

	@Override
	public List<Subarea> getNDidSubarea() {
		return subareaDao.getNDidSubarea();
	}
}
