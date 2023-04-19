<section class="page">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
			
					@foreach($data as $halaman)
					@if ( $halaman->id=="11")
					<ol class="breadcrumb">
						<li><a href="{{ url('/') }}">Home</a></li>
						<li class="active">{{ $halaman->judul }}</li>
					</ol>
						<h1 class="page-title">{{ $halaman->judul }}</h1>
								<p class="page-subtitle">We will tell you who we are</p>
								<div class="line thin"></div>
								<div class="page-description" id="editor1">
									
								    {!! $halaman->deskripsi !!}
								    <!-- <h4>Ullamco Laboris</h4>
									<p>
									</p> -->
								</div>
								
								<div class="question">
										Have a question? <a href="#" class="btn btn-primary">Contact Us</a>
									</div>
						@endif
								
						@endforeach
					</div>
				</div>
			</div>
		</section>

<script>
	tinymce.init({
	selector: 'textarea#editor',  //Change this value according to your HTML
	auto_focus: 'element1',
	width: "700",
	height: "200"
	});

	var content =  tinyMCE.getContent('editor1');
	var inst, contents = new Object();
	for (inst in tinyMCE.editors) {
		if (tinyMCE.editors[inst].getContent)
			contents[inst] = tinyMCE.editors[inst].getContent();
	}  
 
</script>
