package com.entity.vo;

import com.entity.YonghuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;


/**
 * 用户
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author
 * @email
 * @date 2023-02-19 10:34:30
 */
public class YonghuVO  implements Serializable {
	private static final long serialVersionUID = 1L;


	/**
	 * Password
	 */

	private String mima;

	/**
	 * User Name
	 */

	private String yonghuxingming;

	/**
	 * Head Sculpture
	 */

	private String touxiang;

	/**
	 * 性别
	 */

	private String xingbie;

	/**
	 * Phone
	 */

	private String shoujihaoma;


	/**
	 * 设置：Password
	 */

	public void setMima(String mima) {
		this.mima = mima;
	}

	/**
	 * 获取：Password
	 */
	public String getMima() {
		return mima;
	}


	/**
	 * 设置：User Name
	 */

	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}

	/**
	 * 获取：User Name
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}


	/**
	 * 设置：Head Sculpture
	 */

	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}

	/**
	 * 获取：Head Sculpture
	 */
	public String getTouxiang() {
		return touxiang;
	}


	/**
	 * 设置：性别
	 */

	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}

	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}


	/**
	 * 设置：Phone
	 */

	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}

	/**
	 * 获取：Phone
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}

}
