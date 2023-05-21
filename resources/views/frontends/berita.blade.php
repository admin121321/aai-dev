<section class="category">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-8 text-left">
		        <div class="row">
		          <div class="col-md-12">        
		            <ol class="breadcrumb">
		              <li><a href="#">Home</a></li>
		              <li class="active">Berita</li>
		            </ol>
		            <!-- <h1 class="page-title">Category: Computer</h1>
		            <p class="page-subtitle">Showing all posts with category <i>Computer</i></p> -->
		          </div>
		        </div>
		        <div class="line"></div>
		        <div class="row">
				@foreach($data as $posting)
		          <article class="col-md-12 article-list">
		            <div class="inner">
		              <figure>
			              <a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">
						  <img src="{{ url('/images/'.$posting->gambar) }}" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
		                </a>
		              </figure>
		              <div class="details">
		                <div class="detail">
		                  <div class="category">
		                   <a href="#">{{ $posting->nama_kategori}}</a>
		                  </div>
		                  <div class="time">{{ $posting->created_at}}</div>
		                </div>
		                <h1><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo str_replace('-', ' ', ucwords($posting->judul));?></a></h1>
		                <p>
						<?php echo substr("$posting->deskripsi", 0, 220);?>
		                </p>
		                <footer>
		                  <!-- <a href="#" class="love"><i class="ion-android-favorite-outline"></i> <div>237</div></a> -->
		                  <a class="btn btn-primary more" href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">
		                    <div>More</div>
		                    <div><i class="ion-ios-arrow-thin-right"></i></div>
		                  </a>
		                </footer>
		              </div>
		            </div>
		          </article>
				  @endforeach
				  <!-- <br>
				 	 Halaman : {{ $data->currentPage() }}
					Jumlah Data : {{ $data->total() }}
					Data Per Halaman : {{ $data->perPage() }}
					{{ $data->links() }}
				 </br> -->
		          <div class="col-md-12 text-center">
		            <ul class="pagination">
					  {{ $data->links() }}
		            </ul>
		            <div class="pagination-help-text">
					Halaman : {{ $data->currentPage() }} &mdash; 
					Data Per Halaman : {{ $data->perPage() }}
		            </div>
		          </div>
		        </div>
		      </div>
		      <div class="col-md-4 sidebar">
		        <aside>
		          <div class="aside-body">
		            <figure class="ads">
						<h6 class="page-title" style="text-align: center;">Info Social Media Kami</h6>
						<iframe width="350" height="320" src="https://www.instagram.com/aai.jakarta/embed" frameborder="0"></iframe>
		            </figure>
		          </div>
		        </aside>
		      </div>
		    </div>
		  </div>
		</section>