<?php
class ModelCocKuaidiCompany extends Model {
	

	public function getKuaidiCompany($kuaidi_company_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "kuaidi_company WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		return $query->row;
	}

	
}