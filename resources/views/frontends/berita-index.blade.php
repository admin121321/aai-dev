
<section class="single">
			<div class="container">
				<div class="row">
					<div class="col-md-4 sidebar" id="sidebar">
						<aside>
						@foreach(App\Models\Posting::latest()->paginate(1) as $posting)
							<h1 class="aside-title">Recent Post</h1>
							<div class="aside-body">
								<article class="article-fw">
									<div class="inner">
										<figure>
											<a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">												
												<img src="{{ url('/images/'.$posting->gambar) }}">
											</a>
										</figure>
										<div class="details">
											<h1><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo strip_tags("$posting->judul");?></a></h1>
											<p><?php echo substr("$postings->deskripsi", 0, 70);?></p>
											<div class="detail">
												<div class="time"><?php echo strip_tags("$posting->created_at");?></div>
												<!-- <div class="category"><a href="category.html">Lifestyle</a></div> -->
											</div>
										</div>
									</div>
								</article>
								<div class="line"></div>
							</div>
					    @endforeach
						</aside>
						<!-- <aside>
							<div class="aside-body">
								<form class="newsletter">
									<div class="icon">
										<i class="ion-ios-email-outline"></i>
										<h1>Newsletter</h1>
									</div>
									<div class="input-group">
										<input type="email" class="form-control email" placeholder="Your mail">
										<div class="input-group-btn">
											<button class="btn btn-primary"><i class="ion-paper-airplane"></i></button>
										</div>
									</div>
									<p>By subscribing you will receive new articles in your email.</p>
								</form>
							</div>
						</aside> -->
					</div>
					<div class="col-md-8">
						<ol class="breadcrumb">
						  <li><a href="#">Home</a></li>
						  <li class="active">Film</li>
						</ol>
						<article class="article main-article">
							<header>
								<h1><?php echo str_replace('-', ' ', $postings->judul);?></h1>
								<ul class="details">
									<li>{{ $postings->created_at }}</li>
									<li><a>{{ $postings->nama_kategori }}</a></li>
									<li>By {{ $postings->name }}</a></li>
								</ul>
							</header>
							<div class="main">
								<div class="featured">
									<figure>
										<img src="{{ url('/images/'.$postings->gambar) }}" style=" display: block; margin-left: auto; margin-right: auto; width: 50%;">
										<figcaption>gambar <?php echo str_replace('-', ' ', $postings->judul);?></figcaption>
									</figure>
								</div>
							   <div class="description">
								<p>{!! $postings->deskripsi !!}</p>
								</div>
							</div>
							<footer>
								<div class="col">
									<ul class="tags">
										<li><a href="#">Free Themes</a></li>
										<li><a href="#">Bootstrap 3</a></li>
										<li><a href="#">Responsive Web Design</a></li>
										<li><a href="#">HTML5</a></li>
										<li><a href="#">CSS3</a></li>
										<li><a href="#">Web Design</a></li>
									</ul>
								</div>
								<div class="col">
									<a href="#" class="love"><i class="ion-android-favorite-outline"></i> <div>1220</div></a>
								</div>
							</footer>
						</article>
						<div class="sharing">
						<div class="title"><i class="ion-android-share-alt"></i> Sharing is caring</div>
							<ul class="social">
								<li>
									<a href="#" class="facebook">
										<i class="ion-social-facebook"></i> Facebook
									</a>
								</li>
								<li>
									<a href="#" class="twitter">
										<i class="ion-social-twitter"></i> Twitter
									</a>
								</li>
								<li>
									<a href="#" class="googleplus">
										<i class="ion-social-googleplus"></i> Google+
									</a>
								</li>
								<li>
									<a href="#" class="linkedin">
										<i class="ion-social-linkedin"></i> Linkedin
									</a>
								</li>
								<li>
									<a href="#" class="skype">
										<i class="ion-ios-email-outline"></i> Email
									</a>
								</li>
								<li class="count">
									20
									<div>Shares</div>
								</li>
							</ul>
						</div>
						<div class="line">
							<div>Author</div>
						</div>
						<div class="author">
							<figure>
								<img src="images/img01.jpg">
							</figure>
							<div class="details">
								<div class="job">Web Developer</div>
								<h3 class="name">{{ $postings->name }}</h3>
								<p>Nulla sagittis rhoncus nisi, vel gravida ante. Nunc lobortis condimentum elit, quis porta ipsum rhoncus vitae. Curabitur magna leo, porta vel fringilla gravida, consectetur in libero. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>
								<ul class="social trp sm">
									<li>
										<a href="#" class="facebook">
											<svg><rect/></svg>
											<i class="ion-social-facebook"></i>
										</a>
									</li>
									<li>
										<a href="#" class="twitter">
											<svg><rect/></svg>
											<i class="ion-social-twitter"></i>
										</a>
									</li>
									<li>
										<a href="#" class="youtube">
											<svg><rect/></svg>
											<i class="ion-social-youtube"></i>
										</a>
									</li>
									<li>
										<a href="#" class="googleplus">
											<svg><rect/></svg>
											<i class="ion-social-googleplus"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="line"><div>You May Also Like</div></div>
						<div class="row">
						@foreach(App\Models\Posting::latest()->paginate(4) as $posting)
							<article class="article related col-md-6 col-sm-6 col-xs-12">
								<div class="inner">
									<figure>
										<a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">
											<img src="{{ url('/images/'.$posting->gambar) }}">
										</a>
									</figure>
									<div class="padding">
										<h2><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo str_replace('-', ' ', $posting->judul);?></a></h2>
										<div class="detail">
											<div class="category"><a href="category.html">Lifestyle</a></div>
											<div class="time"><?php echo str_replace('-', ' ', $posting->created_at);?></div>
										</div>
									</div>
								</div>
							</article>
							@endforeach
						</div>
						<div class="line thin"></div>
						<!-- <div class="comments">
							<h2 class="title">3 Responses <a href="#">Write a Response</a></h2>
							<div class="comment-list">
								<div class="item">
									<div class="user">                                
										<figure>
											<img src="images/img01.jpg">
										</figure>
										<div class="details">
											<h5 class="name">Mark Otto</h5>
											<div class="time">24 Hours</div>
											<div class="description">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
												tempor incididunt ut labore et dolore <a href="#">magna</a> aliqua. Ut enim ad minim veniam,
												quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.
											</div>
											<footer>
												<a href="#">Reply</a>
											</footer>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="user">                                
										<figure>
											<img src="images/img01.jpg">
										</figure>
										<div class="details">
											<h5 class="name">Mark Otto</h5>
											<div class="time">24 Hours</div>
											<div class="description">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
												tempor incididunt ut labore et dolore <a href="#">magna</a> aliqua. Ut enim ad minim veniam,
												quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.
											</div>
											<footer>
												<a href="#">Reply</a>
											</footer>
										</div>
									</div>
									<div class="reply-list">
										<div class="item">
											<div class="user">                                
												<figure>
													<img src="images/img01.jpg">
												</figure>
												<div class="details">
													<h5 class="name">Mark Otto</h5>
													<div class="time">24 Hours</div>
													<div class="description">
														Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
														cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
														proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
													</div>
													<footer>
														<a href="#">Reply</a>
													</footer>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="user">                                
										<figure>
											<img src="images/img01.jpg">
										</figure>
										<div class="details">
											<h5 class="name">Mark Otto</h5>
											<div class="time">24 Hours</div>
											<div class="description">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
												tempor incididunt ut labore et dolore <a href="#">magna</a> aliqua. Ut enim ad minim veniam,
												quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.
											</div>
											<footer>
												<a href="#">Reply</a>
											</footer>
										</div>
									</div>
								</div>
							</div>
							<form class="row">
								<div class="col-md-12">
									<h3 class="title">Leave Your Response</h3>
								</div>
								<div class="form-group col-md-4">
									<label for="name">Name <span class="required"></span></label>
									<input type="text" id="name" name="" class="form-control">
								</div>
								<div class="form-group col-md-4">
									<label for="email">Email <span class="required"></span></label>
									<input type="email" id="email" name="" class="form-control">
								</div>
								<div class="form-group col-md-4">
									<label for="website">Website</label>
									<input type="url" id="website" name="" class="form-control">
								</div>
								<div class="form-group col-md-12">
									<label for="message">Response <span class="required"></span></label>
									<textarea class="form-control" name="message" placeholder="Write your response ..."></textarea>
								</div>
								<div class="form-group col-md-12">
									<button class="btn btn-primary">Send Response</button>
								</div>
							</form>
						</div> -->
					</div>
					
				</div>
			</div>
</section>