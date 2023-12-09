package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.WeiyuejiluDao;
import com.entity.WeiyuejiluEntity;
import com.service.WeiyuejiluService;
import com.entity.vo.WeiyuejiluVO;
import com.entity.view.WeiyuejiluView;

@Service("weiyuejiluService")
public class WeiyuejiluServiceImpl extends ServiceImpl<WeiyuejiluDao, WeiyuejiluEntity> implements WeiyuejiluService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WeiyuejiluEntity> page = this.selectPage(
                new Query<WeiyuejiluEntity>(params).getPage(),
                new EntityWrapper<WeiyuejiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WeiyuejiluEntity> wrapper) {
		  Page<WeiyuejiluView> page =new Query<WeiyuejiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WeiyuejiluVO> selectListVO(Wrapper<WeiyuejiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WeiyuejiluVO selectVO(Wrapper<WeiyuejiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WeiyuejiluView> selectListView(Wrapper<WeiyuejiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WeiyuejiluView selectView(Wrapper<WeiyuejiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
