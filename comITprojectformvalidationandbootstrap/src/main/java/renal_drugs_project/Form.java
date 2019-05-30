package renal_drugs_project;



import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Range;

public class Form {
	
	
	@Range(min=0, max=140, message="Your entry was outside the expected limits of GFR function. Please verify your entry and try again.")
	private int gfr;
	
	@Min(value = 1, message = "Please select a drug")
	private int drugId;
	
	
	public Form() {
		
	}
	
	public Form(int gfr, int drugId) {
		this.gfr = gfr;
		this.drugId = drugId;
		
	}


	public int getGfr() {
		return gfr;
	}

	public void setGfr(int gfr) {
		this.gfr = gfr;
	}

	public int getDrugId() {
		return drugId;
	}

	public void setDrugId(int drugId) {
		this.drugId = drugId;
	}

	
	
	
	

}
