<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">


				<!-- Page-body start -->
				<div class="page-body">
					<div class="row">
						<div class="col-sm-12">
							<!-- HTML5 Export Buttons table start -->
							<div class="card">
								<div class="card-block">
									<h4 class="sub-title">Daftar Riwayat Top Up</h4>
									<div class="dt-responsive table-responsive">
                                        <table id="cbtn-selectors" class="table table-striped table-bordered nowrap">
											<thead>
												<tr>
													<th>No.</th>
													<th>Tgl. Top Up</th>
													<th>Jam Top Up</th>
													<th>Nama Lengkap</th>
													<th>Total Top Up</th>
													<th>Saldo Terbaru</th>
													<th>Sisa Saldo Terakhir</th>
													<th>Nama Petugas Melayani</th>
													<?php if ($this->session->userdata('level') == "SUPERADMIN") { ?>
														<th>Aksi</th>
													<?php } ?>
												</tr>
											</thead>
											<tbody>
												<?php
                                                                    $no = 1;
                                                                    foreach ($data_topup as $data) {
																		$hari = tgl_dan_hari(substr($data->tgl_top_up, 0, 11));
                                                                        ?>
												<tr>
													<td><?= $no++; ?></td>
													<td><?= $hari.", ".tgl_default(substr($data->tgl_top_up, 0, 11)); ?></td>
													<td><?= $data->jam_top_up; ?></td>
													<td><?= $data->nama_siswa; ?></td>
													<td><strong><?= rupiah($data->nominal_top_up); ?></strong></td>
													<td><strong><?= rupiah($data->sisa_saldo_terakhir); ?></strong></td>
													<td><strong><?= rupiah($data->sisa_saldo_terbaru); ?></strong></td>
													<td><?= $data->nama_admin; ?></td>
													<?php if ($this->session->userdata('level') == "SUPERADMIN") { ?>
													<td>
														<button class="btn btn-danger btn-round text-white f-12" onclick="ConfirmDialog(<?= $data->id; ?>)">
														<i class="feather icon-trash"></i> Hapus</button>
													</td>
													<?php } ?>
												</tr>
												<?php
                                                                    }

                                                                    ?>
											</tbody>
											<tfoot>
												<tr>
													<th>No.</th>
													<th>Tgl. Top Up</th>
													<th>Jam Top Up</th>
													<th>Total Top Up</th>
													<th>Nama Lengkap</th>
													<th>Saldo Terbaru</th>
													<th>Sisa Saldo Terakhir</th>
													<th>Nama Petugas Melayani</th>
													<?php if ($this->session->userdata('level') == "SUPERADMIN") { ?>
														<th>Aksi</th>
													<?php } ?>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							<!-- HTML5 Export Buttons end -->
						</div>
					</div>
				</div>
				<!-- Page-body end -->
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var url="<?php echo base_url();?>";
    function ConfirmDialog(id) {
		var x=confirm("Are you sure to delete record?")
		if (x) {
          	window.location = url + "topup/delete/" + id;
		} else {
			return false;
		}
	}

</script>