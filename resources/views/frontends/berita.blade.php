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
		                <h1><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">{{ $posting->judul}}</a></h1>
		                <p>
						<?php echo substr("$posting->deskripsi", 0, 220);?>
		                </p>
		                <footer>
		                  <a href="#" class="love"><i class="ion-android-favorite-outline"></i> <div>237</div></a>
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
		      <!-- <div class="col-md-4 sidebar">
		        <aside>
		          <div class="aside-body">
		            <figure class="ads">
			            <a href="single.html">
			              <img src="images/ad.png">
			            </a>
		              <figcaption>Advertisement</figcaption>
		            </figure>
		          </div>
		        </aside>
		        <aside>
		          <h1 class="aside-title">Recent Post</h1>
		          <div class="aside-body">
		            <article class="article-fw">
		              <div class="inner">
		                <figure>
			                <a href="single.html">
			                  <img src="images/news/img12.jpg">
			                </a>
		                </figure>
		                <div class="details">
		                  <h1><a href="single.html">Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit</a></h1>
		                  <p>
		                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		                    tempor incididunt ut labore et dolore magna aliqua.
		                  </p>
		                  <div class="detail">
		                    <div class="time">December 26, 2016</div>
		                    <div class="category"><a href="category.html">Lifestyle</a></div>
		                  </div>
		                </div>
		              </div>
		            </article>
		            <div class="line"></div>
		            <article class="article-mini">
		              <div class="inner">
		              <figure>
			              <a href="single.html">
			                <img src="images/news/img05.jpg">
		                </a>
		              </figure>
		              <div class="padding">
		                <h1><a href="single.html">Duis aute irure dolor in reprehenderit in voluptate velit</a></h1>
		                <div class="detail">
		                  <div class="category"><a href="category.html">Lifestyle</a></div>
		                  <div class="time">December 22, 2016</div>
		                </div>
		              </div>
		              </div>
		            </article>
		            <article class="article-mini">
		              <div class="inner">
		                <figure>
			                <a href="single.html">
			                  <img src="images/news/img02.jpg">
		                  </a>
		                </figure>
		                <div class="padding">
		                  <h1><a href="single.html">Fusce ullamcorper elit at felis cursus suscipit</a></h1>
		                  <div class="detail">
		                    <div class="category"><a href="category.html">Travel</a></div>
		                    <div class="time">December 21, 2016</div>
		                  </div>
		                </div>
		              </div>
		            </article>
		            <article class="article-mini">
		              <div class="inner">
		                <figure>
			                <a href="single.html">
			                  <img src="images/news/img13.jpg">
		                  </a>
		                </figure>
		                <div class="padding">
		                  <h1><a href="single.html">Duis aute irure dolor in reprehenderit in voluptate velit</a></h1>
		                  <div class="detail">
		                    <div class="category"><a href="category.html">International</a></div>
		                    <div class="time">December 20, 2016</div>
		                  </div>
		                </div>
		              </div>
		            </article>
		          </div>
		        </aside>
		      </div> -->
		    </div>
		  </div>
		</section>