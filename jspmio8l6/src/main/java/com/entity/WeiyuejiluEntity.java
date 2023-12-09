package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 违约记录
 * 数据库通用操作实体类（普通增删改查）
 * @author
 * @email
 * @date 2023-02-19 10:34:31
 */
@TableName("weiyuejilu")
public class WeiyuejiluEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WeiyuejiluEntity() {

	}

	public WeiyuejiluEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 借阅编号
	 */

	private String jieyuebianhao;

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
	 * 超期费用/天
	 */

	private Float chaoqifeiyong;

	/**
	 * 借阅时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date jieyueshijian;

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
	 * 违约天数
	 */

	private Integer weiyuetianshu;

	/**
	 * 违约金
	 */

	private String weiyuejin;

	/**
	 * 记录时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date jilushijian;

	/**
	 * 跨表用户id
	 */

	private Long crossuserid;

	/**
	 * 跨表主键id
	 */

	private Long crossrefid;

	/**
	 * 是否支付
	 */

	private String ispay;


	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：借阅编号
	 */
	public void setJieyuebianhao(String jieyuebianhao) {
		this.jieyuebianhao = jieyuebianhao;
	}
	/**
	 * 获取：借阅编号
	 */
	public String getJieyuebianhao() {
		return jieyuebianhao;
	}
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
	 * 设置：超期费用/天
	 */
	public void setChaoqifeiyong(Float chaoqifeiyong) {
		this.chaoqifeiyong = chaoqifeiyong;
	}
	/**
	 * 获取：超期费用/天
	 */
	public Float getChaoqifeiyong() {
		return chaoqifeiyong;
	}
	/**
	 * 设置：借阅时间
	 */
	public void setJieyueshijian(Date jieyueshijian) {
		this.jieyueshijian = jieyueshijian;
	}
	/**
	 * 获取：借阅时间
	 */
	public Date getJieyueshijian() {
		return jieyueshijian;
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
	 * 设置：违约天数
	 */
	public void setWeiyuetianshu(Integer weiyuetianshu) {
		this.weiyuetianshu = weiyuetianshu;
	}
	/**
	 * 获取：违约天数
	 */
	public Integer getWeiyuetianshu() {
		return weiyuetianshu;
	}
	/**
	 * 设置：违约金
	 */
	public void setWeiyuejin(String weiyuejin) {
		this.weiyuejin = weiyuejin;
	}
	/**
	 * 获取：违约金
	 */
	public String getWeiyuejin() {
		return weiyuejin;
	}
	/**
	 * 设置：记录时间
	 */
	public void setJilushijian(Date jilushijian) {
		this.jilushijian = jilushijian;
	}
	/**
	 * 获取：记录时间
	 */
	public Date getJilushijian() {
		return jilushijian;
	}
	/**
	 * 设置：跨表用户id
	 */
	public void setCrossuserid(Long crossuserid) {
		this.crossuserid = crossuserid;
	}
	/**
	 * 获取：跨表用户id
	 */
	public Long getCrossuserid() {
		return crossuserid;
	}
	/**
	 * 设置：跨表主键id
	 */
	public void setCrossrefid(Long crossrefid) {
		this.crossrefid = crossrefid;
	}
	/**
	 * 获取：跨表主键id
	 */
	public Long getCrossrefid() {
		return crossrefid;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
