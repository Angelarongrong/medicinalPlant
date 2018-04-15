package com.plant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Plants entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "plants", catalog = "jianghua")
public class Plants implements java.io.Serializable {

	// Fields

	private Integer plid;
	private String scname;
	private String faname;
	private String genera;
	private String loname;
	private String purpose;
	private String pusage;
	private String partused;
	private String vnumber;
	private Integer rivalue;
	private String remarks;
	private String filepath;
	private String scchname;
	private String chgenara;
	private String chfaname;
	private String chloname;

	// Constructors

	/** default constructor */
	public Plants() {
	}

	/** full constructor */
	public Plants(String scname, String faname, String genera, String loname,
			String purpose, String pusage, String partused, String vnumber,
			Integer rivalue, String remarks, String filepath, String scchname,
			String chgenara, String chfaname, String chloname) {
		this.scname = scname;
		this.faname = faname;
		this.genera = genera;
		this.loname = loname;
		this.purpose = purpose;
		this.pusage = pusage;
		this.partused = partused;
		this.vnumber = vnumber;
		this.rivalue = rivalue;
		this.remarks = remarks;
		this.filepath = filepath;
		this.scchname = scchname;
		this.chgenara = chgenara;
		this.chfaname = chfaname;
		this.chloname = chloname;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "plid", unique = true, nullable = false)
	public Integer getPlid() {
		return this.plid;
	}

	public void setPlid(Integer plid) {
		this.plid = plid;
	}

	@Column(name = "scname", length = 100)
	public String getScname() {
		return this.scname;
	}

	public void setScname(String scname) {
		this.scname = scname;
	}

	@Column(name = "faname", length = 100)
	public String getFaname() {
		return this.faname;
	}

	public void setFaname(String faname) {
		this.faname = faname;
	}

	@Column(name = "genera", length = 100)
	public String getGenera() {
		return this.genera;
	}

	public void setGenera(String genera) {
		this.genera = genera;
	}

	@Column(name = "loname", length = 100)
	public String getLoname() {
		return this.loname;
	}

	public void setLoname(String loname) {
		this.loname = loname;
	}

	@Column(name = "purpose", length = 200)
	public String getPurpose() {
		return this.purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	@Column(name = "pusage", length = 200)
	public String getPusage() {
		return this.pusage;
	}

	public void setPusage(String pusage) {
		this.pusage = pusage;
	}

	@Column(name = "partused", length = 100)
	public String getPartused() {
		return this.partused;
	}

	public void setPartused(String partused) {
		this.partused = partused;
	}

	@Column(name = "vnumber", length = 40)
	public String getVnumber() {
		return this.vnumber;
	}

	public void setVnumber(String vnumber) {
		this.vnumber = vnumber;
	}

	@Column(name = "rivalue")
	public Integer getRivalue() {
		return this.rivalue;
	}

	public void setRivalue(Integer rivalue) {
		this.rivalue = rivalue;
	}

	@Column(name = "remarks", length = 200)
	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Column(name = "filepath", length = 100)
	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	@Column(name = "scchname", length = 40)
	public String getScchname() {
		return this.scchname;
	}

	public void setScchname(String scchname) {
		this.scchname = scchname;
	}

	@Column(name = "chgenara", length = 40)
	public String getChgenara() {
		return this.chgenara;
	}

	public void setChgenara(String chgenara) {
		this.chgenara = chgenara;
	}

	@Column(name = "chfaname", length = 40)
	public String getChfaname() {
		return this.chfaname;
	}

	public void setChfaname(String chfaname) {
		this.chfaname = chfaname;
	}

	@Column(name = "chloname", length = 40)
	public String getChloname() {
		return this.chloname;
	}

	public void setChloname(String chloname) {
		this.chloname = chloname;
	}

}