<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Filter Laporan Data Mobil</h1>
        </div>
    </section>

    <!-- <form method="POST" action="<?php echo base_url('admin/laporan') ?>">
    
    <div class="form-group">
        <label>Dari Tanggal</label>
        <input type="date" name="dari" class="form-control"></input>
        <?php echo form_error('dari', '<span class="text-small text-danger">', '</span>')  ?>
    </div>

    <div class="form-group">
        <label>Sampai Tanggal</label>
        <input type="date" name="sampai" class="form-control"></input>
        <?php echo form_error('sampai', '<span class="text-small text-danger">', '</span>')  ?>
    </div>

    <button type="submit" class="btn btn-primary"><i class="fas fa-eye"></i> Tampilkan Data</button>

</form> -->

    <!-- <div class="btn-group">
    <a href="<?php echo base_url() . 'admin/laporan/print_laporan/?dari=' . set_value('dari') . '&sampai=' . set_value('sampai') ?>" class="btn btn-sm btn-success" target="_blank"><i class="fas fa-print"></i> Print Laporan</a>
</div> -->
<div class="container-fluid">

    <table class="display table-responsive table table-striped table-bordered mt-3" id="table">
        <thead>
            <tr>
            <th>No</th>
            <th>Kode Tipe</th>
            <th>Merk</th>
            <th>Nomor Plat</th>
            <th>Warna</th>
            <th>Tahun Mobil</th>
            <th>Harga</th>
            <th>Denda</th>
            <!-- <th>Gambar Mobil</th> -->
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            foreach ($mobil as $tr) : ?>
                <tr>
                <td><?php echo $no++ ?></td>
                    <td><?php echo $tr->kode_type?></td>
                    <td><?php echo $tr->merk ?></td>
                    <td><?php echo $tr->no_plat ?></td>

                    <td><?php echo $tr->warna ?></td>
                    <td><?php echo $tr->tahun ?></td>
                    <td><?php echo $tr->harga ?></td>
                    <td><?php echo $tr->denda ?></td>
                    <!-- <td><?php echo $tr->gambar ?></td> -->
                </tr>

            <?php endforeach; ?>
        </tbody>
    </table>
</div>

</div>