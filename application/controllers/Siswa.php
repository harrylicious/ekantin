<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_siswa');
        $this->load->library('upload'); 
        
    }

    public function index()
    {
        $data['data_siswa'] = $this->m_siswa->get_all();
        $this->template->load('template', 'v_daftar_siswa', $data);
    }

    public function add()
    {
        no_kartu_otomatis();
        $this->template->load('template', 'v_tambah_siswa');
    }

    public function edit($id)
    {
        $data['data'] = $this->m_siswa->get_by_id($id);
        $this->template->load('template', 'v_edit_siswa', $data);
    }


   function barcode_print($id) {
       require 'vendor/autoload.php';
       $data['row'] = $this->m_siswa->get_by_id($id);
       $row = $this->m_siswa->get_by_id($id);
       $data['id'] = $id;
       $html = $this->load->view('kartu', $data, true);
       PdfGenerator($html, $row['nama_lengkap'], array(0, 0, 87.87, 124.72), 'landscape');
   }


    public function create()
    {
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['overwrite']            = true;
        $config['max_size']             = 2048000;
        $config['max_width']            = 10080;
        $config['max_height']           = 10080;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (! $this->upload->do_upload('avatar')) {
            $error = array('error' => $this->upload->display_errors());

                $data = array(
                    "kode" => $this->input->post('kode'),
                    "nama_lengkap" => $this->input->post('nama_lengkap'),
                    "jenis_kelamin" => $this->input->post('jenis_kelamin'),
                    "alamat" => $this->input->post('alamat'),
                    "nama_ayah" => $this->input->post('nama_ayah'),
                    "nama_ibu" => $this->input->post('nama_ibu'),
                    "saldo" => $this->input->post('saldo')
                );
            $this->m_siswa->insert($data);
            $this->session->set_flashdata('success', "Berhasil"); 
            redirect('siswa');
            
        } else {
            $photos = $this->upload->data();

            $data = array(
                    "kode" => $this->input->post('kode'),
                    "nama_lengkap" => $this->input->post('nama_lengkap'),
                    "jenis_kelamin" => $this->input->post('jenis_kelamin'),
                    "alamat" => $this->input->post('alamat'),
                    "photo" => $photos['file_name'],
                    "nama_ayah" => $this->input->post('nama_ayah'),
                    "nama_ibu" => $this->input->post('nama_ibu'),
                    "saldo" => $this->input->post('saldo')
                );
            $this->m_siswa->insert($data);
            $this->session->set_flashdata('success', "Berhasil"); 
            redirect('siswa');
        }
    }

    public function update($id)
    {
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['overwrite']            = true;
        $config['max_size']             = 2048000;
        $config['max_width']            = 10080;
        $config['max_height']           = 10080;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (! $this->upload->do_upload('avatar')) {

            $data = array(
                    "kode" => $this->input->post('kode'),
                    "nama_lengkap" => $this->input->post('nama_lengkap'),
                    "jenis_kelamin" => $this->input->post('jenis_kelamin'),
                    "alamat" => $this->input->post('alamat'),
                    "nama_ayah" => $this->input->post('nama_ayah'),
                    "nama_ibu" => $this->input->post('nama_ibu'),
                    "saldo" => $this->input->post('saldo')
                );
            $this->m_siswa->update($id, $data);
            $this->session->set_flashdata('success', "Berhasil"); 
            redirect('siswa');
        } else {
            $photos = $this->upload->data();

            $data = array(
                    "kode" => $this->input->post('kode'),
                    "nama_lengkap" => $this->input->post('nama_lengkap'),
                    "jenis_kelamin" => $this->input->post('jenis_kelamin'),
                    "alamat" => $this->input->post('alamat'),
                    "photo" => $photos['file_name'],
                    "nama_ayah" => $this->input->post('nama_ayah'),
                    "nama_ibu" => $this->input->post('nama_ibu'),
                    "saldo" => $this->input->post('saldo')
                );
            $this->m_siswa->update($id, $data);
            $this->session->set_flashdata('success', "Berhasil"); 
            redirect('siswa');
        }
    }

    public function delete($id) {
        $data = $this->m_siswa->get_by_id($id);

        $photo = $data['photo'];
        $this->m_siswa->delete($id);
        $this->session->set_flashdata('success', "Berhasil"); 

        unlink("uploads/".$photo);
        redirect('siswa');
    }
}
