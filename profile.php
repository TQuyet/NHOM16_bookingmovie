<?php include('header.php');
if (!isset($_SESSION['user'])) {
	header('location:login.php');
}
?>
<div class="content">
	<div class="wrap">
		<div class="content-top">
			<div class="section group">
				<div class="about span_1_of_2">
					<h3 style="color:black;" class="text-center">Lịch sử đặt vé</h3>
					<?php include('msgbox.php'); ?>
					<?php
					$bk = mysqli_query($con, "select * from tbl_bookings where user_id='" . $_SESSION['user'] . "'");
					if (mysqli_num_rows($bk)) {
					?>
						<table class="table table-bordered">
							<thead>
								<th>Vé</th>
								<th>Phim</th>
								<th>Ngày chiếu</th>
								<th>Tên rạp</th>
								<th>Ghế</th>
								<th>Thành tiền</th>
								<th></th>
							</thead>
							<tbody>
								<?php
								while ($bkg = mysqli_fetch_array($bk)) {
									$m = mysqli_query($con, "select * from tbl_movie where movie_id=(select movie_id from tbl_shows where s_id='" . $bkg['show_id'] . "')");
									$mov = mysqli_fetch_array($m);
									$tt = mysqli_query($con, "select * from tbl_theatre where id='" . $bkg['t_id'] . "'");
									$thr = mysqli_fetch_array($tt);
									$st = mysqli_query($con, "select * from tbl_show_time where st_id=(select st_id from tbl_shows where s_id='" . $bkg['show_id'] . "')");
									$stm = mysqli_fetch_array($st);
								?>
									<tr>
										<td>
											<?php echo $bkg['ticket_id']; ?>
										</td>
										<td>
											<?php echo $mov['movie_name']; ?>
										</td>
										<td>
											<?php echo $bkg['ticket_date']; ?>
										</td>
										<td>
											<?php echo $thr['name']; ?>
										</td>
										<td>
											<?php echo $bkg['no_seats']; ?>
										</td>
										<td>
											<?php echo $bkg['amount']; ?> VND
										</td>
										<td>
											<?php if ($bkg['ticket_date'] < date('Y-m-d')) {
											?>
												<i class="glyphicon glyphicon-ok"></i>
											<?php
											} else { ?>
												<a href="cancel.php?id=<?php echo $bkg['book_id']; ?>" style="text-decoration:none; color:red;">Cancel</a>
											<?php
											}
											?>
										</td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					<?php
					} else {
					?>
						<h3 style="color:red;" class="text-center">Không có vé nào được tìm thấy!</h3>
					<?php
					}
					?>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('#seats').change(function() {
		var charge = <?php echo $screen['charge']; ?>;
		amount = charge * $(this).val();
		$('#amount').html("Rs " + amount);
		$('#hm').val(amount);
	});
</script>