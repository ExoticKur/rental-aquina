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
<h3 style="text-align: center">Laporan Transaksi Rental Mobil</h3>

<table>
	<tr>
		<td>Dari Tanggal</td>
		<td>:</td>
		<td><?php echo date('d-M-Y',strtotime($_GET['dari'])); ?></td>
	</tr>
		<tr>
		<td>Sampai Tanggal</td>
		<td>:</td>
		<td><?php echo date('d-M-Y',strtotime($_GET['sampai'])); ?></td>
	</tr>
</table>

            <table class="table-responsive table table-striped table-bordered mt-3">
            <tr>
                
                <th>No</th>
                <th>Customer</th>
                <th>Mobil</th>
                <th>Tgl. Rental</th>
                <th>Tgl. Kembali</th>
                <th>Harga/Hari</th>
                <th>Denda/Hari</th>
                <th>Total Denda</th>
                <th>Tgl. Dikembalikan</th>
                <th>Status Pengembalian</th>
                <th>Status Rental</th>
            </tr>
            <?php
                $no = 1;
                foreach ($laporan as $tr) : ?>
                    <tr>
                        <td><?php echo $no++ ?></td>
                        <td><?php echo $tr->nama ?></td>
                        <td><?php echo $tr->merk ?></td>
                        <td><?php echo date('d/m/Y', strtotime($tr->tanggal_rental ))?></td>
                        <td><?php echo date('d/m/Y', strtotime($tr->tanggal_kembali ))?></td>
                        <td>Rp. <?php echo number_format($tr->harga,0,',','.')?></td>
                        <td>Rp. <?php echo number_format($tr->denda,0,',','.')?></td>
                        <td>Rp. <?php echo number_format($tr->total_denda,0,',','.')?></td>
                        <td>
                            <?php 
                                if($tr->tanggal_pengembalian=="0000-00-00"){
                                    echo "-";
                                }else{
                                    echo date('d/m/Y', strtotime($tr->tanggal_pengembalian));
                                }
                            ?>
                        </td>

                        <td>
                            <?php if($tr->status_pengembalian == "Kembali") {
                                echo "Kembali";
                            }else{
                                echo "Belum Kembali";
                            }

                            ?>
                        </td>

                        <td>
                            <?php if($tr->status_rental == "Selesai") {
                                echo "Kembali";
                            }else{
                                echo "Belum Selesai";
                            }

                            ?>
                        </td>
                    </tr>
                    

            <?php endforeach; ?>
 		</table>
         <table width="100%">
			<tr>
				<td width="800"><br><br><br><br></td>
				<td class="text" align="center">Direktur Perusahan<br><br><br><br><br><b>Welly</b></td>
			</tr>
	     </table>

 		<script type="text/javascript">
 			window.print();
 		</script>