<div style="width: 1000px">
<table style="width: 100%">
<table>
<tr>
	<td><img src="<?php echo base_url() ?>assets/assets_shop/img/logo1.png" height="150" width="150" alt="JSOFT"></td>
	<td>
	<center>
		<font size="10"><b>CV. AQUINA RATU JAMBI</b></font><br>
		<font size="6"><b>Transportasi - Rental dan Sewa Kendaraan</b></font><br>
		<font size="4"><i>Jalan Kabia RT 003 No. 69 Kelurahan Handil Jaya Kecamatan Jelutung Kota Jambi</i></font>
		<font size="4">Telp : +62 852 6693 0933 Email : welly.well87@gmail.com</font><br>
	</center>
	</td>
</tr>
</table>	
<hr>
	<?php foreach($transaksi as $tr) : ?>
		
	<tr>
	<span style="font-weight: bold">Invoice Pembayaran Anda</h4>
	<hr>
	</tr>
	<table style="width: 50%">
	
		<tr>
			<td>Nama Customer</td>
			<td>: </td>
			<td><?php echo $tr->nama ?></td>
		</tr>

		<tr>
			<td>Merk Mobil</td>
			<td>: </td>
			<td><?php echo $tr->merk ?></td>
		</tr>

		<tr>
			<td>Tanggal Rental</td>
			<td>: </td>
			<td><?php echo date('d/m/Y', strtotime($tr->tanggal_rental)); ?></td>
		</tr>

		<tr>
			<td>Tanggal Kembali</td>
			<td>: </td>
			<td><?php echo date('d/m/Y', strtotime($tr->tanggal_kembali)); ?></td>
		</tr>

		<tr>
			<td>Biaya Sewa/Hari</td>
			<td>: </td>
			<td>Rp. <?php echo number_format($tr->harga,0,',','.') ?></td>
		</tr>

		<tr>
			<?php 
				$x = strtotime($tr->tanggal_kembali);
				$y = strtotime($tr->tanggal_rental);
				$jmlHari = abs(($x - $y)/(60*60*24));

			?>
			<td>Jumlah Hari Sewa</td>
			<td>: </td>
			<td><?php echo $jmlHari; ?> Hari</td>
		</tr>

		<tr>
			<td>Status Pembayaran</td>
			<td>:</td>
			<td>
				<?php 
					if($tr->status_pembayaran == '0') {
						echo "Belum Lunas";
					}else{
						echo "Lunas";
					}
				?>
			</td>
		</tr>

		<tr style="font-weight: bold; color: red">
			<td>JUMLAH PEMBAYARAN</td>
			<td>: </td>
			<td>Rp. <?php echo number_format(($tr->harga * $jmlHari),0,',','.') ?></td>
		</tr>
	</table>
	<?php endforeach; ?>
</table>
<hr>
<span style="font-weight: bold">Informasi Rental</span>
<table style="width: 100%">
	<tr>
		<td>Nama Rental</td>
		<td>:</td>
		<td><?php echo $rental[0]->nama_rental ?></td>
	</tr>
	<tr>
		<td>Alamat Rental</td>
		<td>:</td>
		<td><?php echo $rental[0]->alamat ?></td>
	</tr>
</table>
<hr>
<table width="100%">
			<tr>
				<td width="800"><br><br><br><br></td>
				<td class="text" align="center">Direktur Perusahan<br><br><br><br><br><b>Welly</b></td>
			</tr>
	     </table>
<!-- <span style="font-weight: bold">Alat Pembayaran: </span>
	<ul>
		<?php foreach ($payment as $pm ) : ?>
			<li><?php echo $pm->nama_payment . ' ' . $pm->key_payment . ' ' . $pm->atas_nama  ?></li>
		<?php endforeach; ?>
	</ul> -->
</div>
<script type="text/javascript">
	window.print();
</script>