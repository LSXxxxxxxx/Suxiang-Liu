package com.dao;

import com.entity.WeiyuejiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WeiyuejiluVO;
import com.entity.view.WeiyuejiluView;


/**
 * 违约记录
 * 
 * @author 
 * @email 
 * @date 2023-02-19 10:34:31
 */
public interface WeiyuejiluDao extends BaseMapper<WeiyuejiluEntity> {
	
	List<WeiyuejiluVO> selectListVO(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
	
	WeiyuejiluVO selectVO(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
	
	List<WeiyuejiluView> selectListView(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);

	List<WeiyuejiluView> selectListView(Pagination page,@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
	
	WeiyuejiluView selectView(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
	

}
