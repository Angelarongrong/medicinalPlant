package com.plant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Guanli entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "guanli", catalog = "jianghua")
public class Guanli implements java.io.Serializable {

	// Fields

	private Integer xuhao;
	private String guanli;
	private String mima;

	// Constructors

	/** default constructor */
	public Guanli() {
	}

	/** full constructor */
	public Guanli(String guanli, String mima) {
		this.guanli = guanli;
		this.mima = mima;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "xuhao", unique = true, nullable = false)
	public Integer getXuhao() {
		return this.xuhao;
	}

	public void setXuhao(Integer xuhao) {
		this.xuhao = xuhao;
	}

	@Column(name = "guanli", nullable = false, length = 40)
	public String getGuanli() {
		return this.guanli;
	}

	public void setGuanli(String guanli) {
		this.guanli = guanli;
	}

	@Column(name = "mima", nullable = false, length = 40)
	public String getMima() {
		return this.mima;
	}

	public void setMima(String mima) {
		this.mima = mima;
	}

}