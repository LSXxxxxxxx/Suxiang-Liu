package com.entity.vo;

import com.entity.TushuguihaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;


/**
 * 图书归还
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author
 * @email
 * @date 2023-02-19 10:34:30
 */
public class TushuguihaiVO  implements Serializable {
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
	 * 作者
	 */

	private String zuozhe;

	/**
	 * 可借天数
	 */

	private String kejietianshu;

	/**
	 * 借阅时间
	 */

	private String jieyueshijian;

	/**
	 * 归还时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date guihaishijian;

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
	 * 设置：作者
	 */

	public void setZuozhe(String zuozhe) {
		this.zuozhe = zuozhe;
	}

	/**
	 * 获取：作者
	 */
	public String getZuozhe() {
		return zuozhe;
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
	 * 设置：借阅时间
	 */

	public void setJieyueshijian(String jieyueshijian) {
		this.jieyueshijian = jieyueshijian;
	}

	/**
	 * 获取：借阅时间
	 */
	public String getJieyueshijian() {
		return jieyueshijian;
	}


	/**
	 * 设置：归还时间
	 */

	public void setGuihaishijian(Date guihaishijian) {
		this.guihaishijian = guihaishijian;
	}

	/**
	 * 获取：归还时间
	 */
	public Date getGuihaishijian() {
		return guihaishijian;
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

}
