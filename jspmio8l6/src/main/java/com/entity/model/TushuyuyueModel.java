package com.entity.model;

import com.entity.TushuyuyueEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 图书预约
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 * @author
 * @email
 * @date 2023-02-19 10:34:31
 */
public class TushuyuyueModel  implements Serializable {
	private static final long serialVersionUID = 1L;


	/**
	 * 条形码
	 */

	private String tiaoxingma;

	/**
	 * 图书名称
	 */

	private String tushumingcheng;

	/**
	 * 借阅价格
	 */

	private String jieyuejiage;

	/**
	 * 可借天数
	 */

	private String kejietianshu;

	/**
	 * 预约时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date yuyueshijian;

	/**
	 * user Account
	 */

	private String yonghuzhanghao;

	/**
	 * User Name
	 */

	private String yonghuxingming;

	/**
	 * Phone
	 */

	private String shoujihaoma;

	/**
	 * 是否审核
	 */

	private String sfsh;

	/**
	 * 审核回复
	 */

	private String shhf;


	/**
	 * 设置：条形码
	 */

	public void setTiaoxingma(String tiaoxingma) {
		this.tiaoxingma = tiaoxingma;
	}

	/**
	 * 获取：条形码
	 */
	public String getTiaoxingma() {
		return tiaoxingma;
	}


	/**
	 * 设置：图书名称
	 */

	public void setTushumingcheng(String tushumingcheng) {
		this.tushumingcheng = tushumingcheng;
	}

	/**
	 * 获取：图书名称
	 */
	public String getTushumingcheng() {
		return tushumingcheng;
	}


	/**
	 * 设置：借阅价格
	 */

	public void setJieyuejiage(String jieyuejiage) {
		this.jieyuejiage = jieyuejiage;
	}

	/**
	 * 获取：借阅价格
	 */
	public String getJieyuejiage() {
		return jieyuejiage;
	}


	/**
	 * 设置：可借天数
	 */

	public void setKejietianshu(String kejietianshu) {
		this.kejietianshu = kejietianshu;
	}

	/**
	 * 获取：可借天数
	 */
	public String getKejietianshu() {
		return kejietianshu;
	}


	/**
	 * 设置：预约时间
	 */

	public void setYuyueshijian(Date yuyueshijian) {
		this.yuyueshijian = yuyueshijian;
	}

	/**
	 * 获取：预约时间
	 */
	public Date getYuyueshijian() {
		return yuyueshijian;
	}


	/**
	 * 设置：user Account
	 */

	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}

	/**
	 * 获取：user Account
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
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


	/**
	 * 设置：是否审核
	 */

	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}

	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}


	/**
	 * 设置：审核回复
	 */

	public void setShhf(String shhf) {
		this.shhf = shhf;
	}

	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
