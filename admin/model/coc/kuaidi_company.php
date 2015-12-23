<?php
class ModelCocKuaidiCompany extends Model {
	public function addKuaidiCompany($data) {
		$this->event->trigger('pre.admin.kuaidi_company.add', $data);

		$this->db->query("INSERT INTO " . DB_PREFIX . "kuaidi_company SET name = '" . $this->db->escape($data['name']) . "', code = '" . $this->db->escape($data['code']) . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW(), date_added = NOW()");

		$kuaidi_company_id = $this->db->getLastId();


		if (isset($data['kuaidi_company_store'])) {
			foreach ($data['kuaidi_company_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "kuaidi_company_to_store SET kuaidi_company_id = '" . (int)$kuaidi_company_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->cache->delete('kuaidi_company');

		$this->event->trigger('post.admin.kuaidi_company.add', $kuaidi_company_id);

		return $kuaidi_company_id;
	}

	public function editKuaidiCompany($kuaidi_company_id, $data) {
		$this->event->trigger('pre.admin.kuaidi_company.edit', $data);

		$this->db->query("UPDATE " . DB_PREFIX . "kuaidi_company SET name = '" . $this->db->escape($data['name']) . "', code = '" . $this->db->escape($data['code']) . "',  sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW() WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "kuaidi_company_to_store WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		if (isset($data['kuaidi_company_store'])) {
			foreach ($data['kuaidi_company_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "kuaidi_company_to_store SET kuaidi_company_id = '" . (int)$kuaidi_company_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->cache->delete('kuaidi_company');

		$this->event->trigger('post.admin.kuaidi_company.edit', $kuaidi_company_id);
	}

	public function deleteKuaidiCompany($kuaidi_company_id) {
		$this->event->trigger('pre.admin.kuaidi_company.delete', $kuaidi_company_id);

		$this->db->query("DELETE FROM " . DB_PREFIX . "kuaidi_company WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "kuaidi_company_to_store WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		$this->cache->delete('kuaidi_company');

		$this->event->trigger('post.admin.kuaidi_company.delete', $kuaidi_company_id);
	}


	public function getKuaidiCompany($kuaidi_company_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "kuaidi_company WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		return $query->row;
	}

	public function getKuaidiCompanies($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "kuaidi_company WHERE kuaidi_company_id != 0 ";

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}


	public function getKuaidiCompanyStores($kuaidi_company_id) {
		$kuaidi_company_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "kuaidi_company_to_store WHERE kuaidi_company_id = '" . (int)$kuaidi_company_id . "'");

		foreach ($query->rows as $result) {
			$kuaidi_company_store_data[] = $result['store_id'];
		}

		return $kuaidi_company_store_data;
	}

	public function getTotalKuaidiCompanies() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "kuaidi_company");

		return $query->row['total'];
	}
	
}
