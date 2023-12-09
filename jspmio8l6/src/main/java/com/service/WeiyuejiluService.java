package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WeiyuejiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WeiyuejiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WeiyuejiluView;


/**
 * 违约记录
 *
 * @author 
 * @email 
 * @date 2023-02-19 10:34:31
 */
public interface WeiyuejiluService extends IService<WeiyuejiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WeiyuejiluVO> selectListVO(Wrapper<WeiyuejiluEntity> wrapper);
   	
   	WeiyuejiluVO selectVO(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
   	
   	List<WeiyuejiluView> selectListView(Wrapper<WeiyuejiluEntity> wrapper);
   	
   	WeiyuejiluView selectView(@Param("ew") Wrapper<WeiyuejiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WeiyuejiluEntity> wrapper);
   	

}

