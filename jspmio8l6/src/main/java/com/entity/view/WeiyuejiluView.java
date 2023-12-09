package com.entity.view;

import com.entity.WeiyuejiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 违约记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-19 10:34:31
 */
@TableName("weiyuejilu")
public class WeiyuejiluView  extends WeiyuejiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WeiyuejiluView(){
	}
 
 	public WeiyuejiluView(WeiyuejiluEntity weiyuejiluEntity){
 	try {
			BeanUtils.copyProperties(this, weiyuejiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
