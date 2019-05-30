package renal_drugs_project;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DrugRepository extends JpaRepository<Drug,Integer> {
	
	public List<Drug> findAllByOrderByDrugNameAsc();
	
	}
