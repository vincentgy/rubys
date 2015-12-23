<?php
class ModelOthersExpressCompany extends Model {
	

	public function getExpressCompany($express_company_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "express_company WHERE express_company_id = '" . (int)$express_company_id . "'");

		return $query->row;
	}

	
}