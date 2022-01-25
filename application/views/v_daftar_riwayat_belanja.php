<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">
				<?php if ($this->session->flashdata('success') != "") { ?>
				<div class="alert alert-success" id="success-alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<i class="icofont icofont-close-line-circled"></i>
					</button>
					<strong>Success!</strong> <?= $this->session->flashdata('success'); ?></code>
				</div>
				<?php } 
				else if ($this->session->flashdata('failed') != "") {?>
					<div class="alert alert-danger" id="success-alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<i class="icofont icofont-close-line-circled"></i>
						</button>
						<strong>Saldo tidak mencukupi.</strong> <?= $this->session->flashdata('success'); ?></code>
					</div>
				<?php } 
				else if ($this->session->flashdata('limited') != "") {?>
					<div class="alert alert-warning" id="success-alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<i class="icofont icofont-close-line-circled"></i>
						</button>
						<strong>Maaf, total belanja sudah melebihi batas.</strong> <?= $this->session->flashdata('success'); ?></code>
					</div>
				<?php } ?>


				<!-- Page-body start -->
				<div class="page-body">
					<div class="row">
						<div class="col-sm-12">
							<!-- HTML5 Export Buttons table start -->
							<div class="card">
								<div class="card-block">
									<h4 class="sub-title">Daftar Riwayat Belanja</h4>
									<div class="dt-responsive table-responsive">
                                        <table id="cbtn-selectors" class="table table-striped table-bordered nowrap">
											<thead>
												<tr>
													<th>No.</th>
													<th>Tgl. Belanja</th>
													<th>Jam Belanja</th>
													<th>Nama Lengkap</th>
													<th>Total Belanja</th>
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
													foreach ($data_belanja as $data) {
														$hari = tgl_dan_hari(substr($data->tgl_belanja, 0, 11));
														?>
																<tr>
																	<td><?= $no++; ?></td>
																	<td><?= $hari.", ".tgl_default(substr($data->tgl_belanja, 0, 11)); ?></td>
																	<td><?= $data->jam_belanja; ?></td>
																	<td><?= $data->nama_siswa; ?></td>
																	<td><?= rupiah($data->total_belanja); ?></td>
																	<td><?= rupiah($data->sisa_saldo_terakhir); ?></td>
																	<td><?= $data->nama_admin; ?></td>
																	<?php if ($this->session->userdata('level') == "SUPERADMIN") { ?>
																	<td><a class="btn btn-success btn-round text-white f-12"
																			href="<?= base_url('belanja/edit/'.$data->id); ?>"><i class="feather icon-edit-2"></i> Edit</a>
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
													<th>Tgl. Belanja</th>
													<th>Jam Belanja</th>
													<th>Total Belanja</th>
													<th>Nama Lengkap</th>
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
	<!-- Main-body end -->
	<div id="styleSelector">

	</div>
</div>
<script type="text/javascript">
	var url="<?php echo base_url();?>";
    function ConfirmDialog(id) {
		var x=confirm("Are you sure to delete record?")
		if (x) {
          	window.location = url + "belanja/delete/" + id;
		} else {
			return false;
		}
	}

</script>