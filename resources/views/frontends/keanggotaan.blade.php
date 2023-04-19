<section class="page">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
			
					
					<ol class="breadcrumb">
						<li><a href="{{ url('/') }}">Home</a></li>
						<li class="active">Keanggotaan</li>
					</ol>
					<div class="row">
							<div class="col-12 table-responsive">
							<br />
								<table class="table text-start align-middle table-bordered table-hover mb-0 hal_datatable"> 
									<thead>
										<tr>
											<th>No</th>
											<th>Nama Anggota</th>
										</tr>
									</thead>
									<tbody>
									@foreach($data as $index => $user)
										<tr>
											<td>{{$index +1}}</td>
											<td>{{$user->name}}</td>
										</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						</div>
						<div class="question">
							Ingin Menjadi Anggota? <a href="{{ route('register') }}" class="btn btn-primary">Daftar Disini</a>
						</div>
					</div>
				</div>
			</div>
		</section>
