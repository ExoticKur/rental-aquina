<?php 
class Laporan extends CI_Controller{

	public function __construct()
    {
        parent::__construct();
        $this->load->model('rental_model');
    }
	public function index(){
		// $this->rental_model->admin_login();

		// $dari 		= $this->input->post('dari');
		// $sampai 	= $this->input->post('sampai');
		// $this->_rules();

		// if($this->form_validation->run() == FALSE){
		// 	$this->load->view('templates_admin/header');
		// 	$this->load->view('templates_admin/sidebar');
		// 	$this->load->view('admin/filter_laporan');
		// 	$this->load->view('templates_admin/footer');
		// }else{

		// 	$data['laporan'] = $this->db->query("SELECT * FROM transaksi tr, mobil mb, customer cs WHERE tr.id_mobil=mb.id_mobil AND tr.id_customer=cs.id_customer AND date(tanggal_rental) >= '$dari' AND date(tanggal_rental) <= '$sampai'")->result();

		$this->load->model('Rental_model');

		$data['transaksi'] = $this->rental_model->get_transaksi();
		$data['title'] = "Laporan Data Transaksi";

			$this->load->view('templates_laporan/header', $data);
			$this->load->view('templates_laporan/sidebar');
			$this->load->view('admin/laporan_transaksi',$data);
			$this->load->view('templates_laporan/footer');
		} 

		public function mobil(){
			$data['mobil'] = $this->rental_model->get_data('mobil')->result();
			$data['title'] = "Laporan Data Mobil";
	
				$this->load->view('templates_laporan/header', $data);
				$this->load->view('templates_laporan/sidebar');
				$this->load->view('admin/laporan_mobil',$data);
				$this->load->view('templates_laporan/footer');
		}

		public function customer(){
			$data['customer'] = $this->rental_model->get_data('customer')->result();
			$data['title'] = "Laporan Data Customer";
	
				$this->load->view('templates_laporan/header', $data);
				$this->load->view('templates_laporan/sidebar');
				$this->load->view('admin/laporan_customer',$data);
				$this->load->view('templates_laporan/footer');
		}
	

	

	public function print_laporan(){
		$this->rental_model->admin_login();
		$dari 		= $this->input->get('dari');
		$sampai 	= $this->input->get('sampai');

		$data['title']	 = "Print Laporan Transaksi";
		$data['laporan'] = $this->db->query("SELECT * FROM transaksi tr, mobil mb, customer cs WHERE tr.id_mobil=mb.id_mobil AND tr.id_customer=cs.id_customer AND date(tanggal_rental) >= '$dari' AND date(tanggal_rental) <= '$sampai'")->result();

			$this->load->view('templates_admin/header');
			$this->load->view('admin/print_laporan',$data);
	}

	public function _rules(){
		$this->form_validation->set_rules('dari', 'Dari Tanggal','required');
		$this->form_validation->set_rules('sampai', 'Sampai Tanggal','required');
	}
}
?>
