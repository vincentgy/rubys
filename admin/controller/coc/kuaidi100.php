<?php
class ControllerCocKuaidi100 extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('coc/kuaidi100');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('coc_kuaidi100', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('coc/kuaidi100', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_form'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		
		$data['entry_coc_kuaidi100_appkey'] = $this->language->get('entry_coc_kuaidi100_appkey');
		$data['entry_coc_kuaidi100_status'] = $this->language->get('entry_coc_kuaidi100_status');

		$data['help_coc_kuaidi100_appkey'] = $this->language->get('help_coc_kuaidi100_appkey');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_general'] = $this->language->get('tab_general');
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}


		if (isset($this->error['coc_kuaidi100_appkey'])) {
			$data['error_coc_kuaidi100_appkey'] = $this->error['coc_kuaidi100_appkey'];
		} else {
			$data['error_coc_kuaidi100_appkey'] = '';
		}
		


		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_stores'),
			'href' => $this->url->link('setting/store', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('setting/setting', 'token=' . $this->session->data['token'], 'SSL')
		);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['action'] = $this->url->link('coc/kuaidi100', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('common/dashborad', 'token=' . $this->session->data['token'], 'SSL');

		$data['token'] = $this->session->data['token'];
		
		if (isset($this->request->post['coc_kuaidi100_appkey'])) {
			$data['coc_kuaidi100_appkey'] = $this->request->post['coc_kuaidi100_appkey'];
		} else {
			$data['coc_kuaidi100_appkey'] = $this->config->get('coc_kuaidi100_appkey');
		}
		
		if (isset($this->request->post['coc_kuaidi100_status'])) {
			$data['coc_kuaidi100_status'] = $this->request->post['coc_kuaidi100_status'];
		} elseif (!empty($product_info)) {
			$data['coc_kuaidi100_status'] = $this->request->post['coc_kuaidi100_status'];
		} else {
			$data['coc_kuaidi100_status'] = true;
		}

		


		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('coc/kuaidi100.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'coc/kuaidi100')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (utf8_strlen($this->request->post['coc_kuaidi100_appkey']) < 5) {
			
			$this->error['coc_kuaidi100_appkey'] = $this->language->get('error_coc_kuaidi100_appkey');

		}


		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

}