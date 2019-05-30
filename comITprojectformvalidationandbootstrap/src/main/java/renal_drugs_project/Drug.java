package renal_drugs_project;


import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "drug_info")

public class Drug {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="drug_id") 
	@NotNull(message="Please select a drug.")
	public int id;
	
	@Column(name="drugname")
	private String drugName;
	
	@Column(name="references")
	private String references;
	
	@Column(name="notes")
	private String notes;
	
	@Column(name="cutoff")
	private int cutoff;
	
	
	
	@Override
	public String toString() {
		return "Drug [id=" + id + ", drugName=" + drugName + ", references=" + references + ", notes=" + notes
				+ ", cutoff=" + cutoff + "]";
	}

	public Drug () {
	
	}
	
	public Drug (int id, String drugName, String references, String notes) {
		this.id = id;
		this.drugName=drugName;
		this.references = references;
		this.notes=notes;
	}
	
	

	public Integer getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDrugName() {
		return drugName;
	}

	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}

	public String getReferences() {
		return references;
	}

	public void setReferences(String references) {
		this.references = references;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getCutoff() {
		return cutoff;
	}

	public void setCutoff(int cutoff) {
		this.cutoff = cutoff;
	}

	

	

	
	
	
	
	
	

}
