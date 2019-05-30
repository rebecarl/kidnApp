package renal_drugs_project;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

@Service
public class DrugService {
	
	private final DrugRepository drugRepository;
	
	@Autowired
	public DrugService(DrugRepository drugRepository) {
	this.drugRepository = drugRepository;
	}
	

	public List<Drug> findAll() {
		return drugRepository.findAllByOrderByDrugNameAsc();
	}
	
	
	public Drug findById(int id) {
		Optional<Drug> drugOptional = drugRepository.findById(id);
		Drug drug = drugOptional.orElse(null);
		return drug;
		}
	
	public int findCutoffByDrugId(int drugId) {
		Optional<Drug> drugOptional = drugRepository.findById(drugId);
		Drug drug = drugOptional.orElse(null);
		int cutoff = drug.getCutoff();
		return cutoff;
	}
	
	
		 
	 }
	

	
	
	
	
	
	
	


