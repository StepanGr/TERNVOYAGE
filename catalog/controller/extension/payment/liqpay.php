<?php
class ControllerExtensionPaymentLiqPay extends Controller {
	public function index() {
		$data['button_confirm_pay'] = $this->language->get('button_confirm_pay');

		$data['action'] = 'https://liqpay.com/?do=clickNbuy';
		$data['continue'] = $this->url->link('checkout/success');

		$data['xml'] = '';
		$data['signature'] = '';

		return $this->response->setOutput( $this->load->view('extension/payment/liqpay', $data));
	}

	public function confirm() {
		$json = [];
		if (array_key_exists('order_id',$this->session->data) && $this->session->data['order_id'] > 0) {
			$this->load->model('checkout/order');


			$order_info = $this->session->data['order_data'];

			$data['action'] = 'https://liqpay.com/?do=clickNbuy';


			$xml  = '<request>';
			$xml .= '	<version>1.2</version>';
			$xml .= '	<result_url>' . $this->url->link('checkout/success', '', true) . '</result_url>';
			$xml .= '	<server_url>' . $this->url->link('extension/payment/liqpay/callback', '', true) . '</server_url>';
			$xml .= '	<merchant_id>' . $this->config->get('liqpay_merchant') . '</merchant_id>';
			$xml .= '	<order_id>' . $this->session->data['order_id'] . '</order_id>';
			$xml .= '	<amount>' . $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false) . '</amount>';
			$xml .= '	<currency>' . $order_info['currency_code'] . '</currency>';
			$xml .= '	<description>' . $this->config->get('config_name') . ' ' . $order_info['email'] . '</description>';
			$xml .= '	<default_phone></default_phone>';
			$xml .= '	<pay_way>' . $this->config->get('liqpay_type') . '</pay_way>';
			$xml .= '</request>';

			$json['xml'] = base64_encode($xml);
			$json['signature'] = base64_encode(sha1($this->config->get('liqpay_signature') . $xml . $this->config->get('liqpay_signature'), true));

			$log = new Log('liqpay.log');
			$log->write("start pay with internet requearing");
			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('liqpay_order_status_id'));
		}
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function callback() {
		$xml = base64_decode($this->request->post['operation_xml']);
		$signature = base64_encode(sha1($this->config->get('liqpay_signature') . $xml . $this->config->get('liqpay_signature'), true));

		$posleft = strpos($xml, 'order_id');
		$posright = strpos($xml, '/order_id');

		$order_id = substr($xml, $posleft + 9, $posright - $posleft - 10);
		$p = simplexml_load_string($xml);

		$status_id = $this->config->get('config_order_status_id');
		$log = new Log('liqpay.log');
		$log->write("calback is back from order ($order_id and status have $p->status)");
		if ($signature == $this->request->post['signature']) {
			$this->load->model('checkout/order');
			if ($p->status == "success") {
				$status_id = $this->config->get('liqpay_order_success_status_id');
			} elseif ($p->status == "reversed") {
				$status_id = $this->config->get('liqpay_order_reversed_status_id');
			} elseif ($p->status == "processing") {
				$status_id = $this->config->get('liqpay_order_processing_status_id');
			} elseif ($p->status == "failure") {
				$status_id = $this->config->get('liqpay_order_failure_status_id');
			}
			$this->model_checkout_order->addOrderHistory($order_id, $status_id);
		}
	}
}