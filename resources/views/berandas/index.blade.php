@if (Auth::user()->level=="SUPERADMIN")<!-- Main Content -->
  <div class="main-content">
      <section class="section">
        <div class="section-header">
          <h1>Dashboard</h1>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-primary">
                <i class="far fa-user"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Total Users</h4>
                </div>
                <div class="card-body">
                {{ DB::table('users')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="far fa-newspaper"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Postings</h4>
                </div>
                <div class="card-body">
                {{ DB::table('postings')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-warning">
                <i class="far fa-file"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-users"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Advokat</h4>
                </div>
                <div class="card-body">
                {{ DB::table('categories')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="fas fa-circle"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul Open</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->where('status','=','Open')->count() }}
                </div>
              </div>
            </div>
          </div>  
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-circle"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul Close</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->where('status','=','Closed')->count() }}
                </div>
              </div>
            </div>
          </div>                  
        </div>
        <div class="row">
          <div class="col-lg-8 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4></h4>
              </div>
              <div class="card-body">
              <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
                <!-- <canvas id="myChart" height="182"></canvas>
                <div class="statistic-details mt-sm-4">
                  <div class="statistic-details-item">
                    <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 7%</span>
                    <div class="detail-value">$243</div>
                    <div class="detail-name">Today's Sales</div>
                  </div>
                  <div class="statistic-details-item">
                    <span class="text-muted"><span class="text-danger"><i class="fas fa-caret-down"></i></span> 23%</span>
                    <div class="detail-value">$2,902</div>
                    <div class="detail-name">This Week's Sales</div>
                  </div>
                  <div class="statistic-details-item">
                    <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span>9%</span>
                    <div class="detail-value">$12,821</div>
                    <div class="detail-name">This Month's Sales</div>
                  </div>
                  <div class="statistic-details-item">
                    <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 19%</span>
                    <div class="detail-value">$92,142</div>
                    <div class="detail-name">This Year's Sales</div>
                  </div>
                </div> -->
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4>Tiket Konsul</h4>
              </div>
              <div class="card-body">
              @foreach($data as $ticket)             
                <ul class="list-unstyled list-unstyled-border">
                  <li class="media">
                    <!-- <img class="mr-3 rounded-circle" width="50" src="assets/img/avatar/avatar-1.png" alt="avatar"> -->
                    <div class="media-body">
                      <div class="media-title">{{ $ticket->name }}</div>
                      <div class="float-right text-primary"><a href="{{ url('tickets/' . $ticket->ticket_id) }}">{{ $ticket->ticket_id}}</a></div>
                      <span class="text-small text-muted">{{ $ticket->message}}</span>
                    </div>
                  </li>
                </ul>
              @endforeach
                <div class="text-center pt-1 pb-1">
                  <a href="{{ url('admin/tickets') }}" class="btn btn-primary btn-lg btn-round">
                    View All
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
  </div>
@elseif (Auth::user()->level=="ADMIN")
  <div class="main-content">
      <section class="section">
        <div class="section-header">
          <h1>Dashboard</h1>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-primary">
                <i class="far fa-user"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Total Users</h4>
                </div>
                <div class="card-body">
                {{ DB::table('users')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="far fa-newspaper"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Postings</h4>
                </div>
                <div class="card-body">
                {{ DB::table('postings')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-warning">
                <i class="far fa-file"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-users"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Advokat</h4>
                </div>
                <div class="card-body">
                {{ DB::table('categories')->count() }}
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="fas fa-circle"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul Open</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->where('status','=','')->count() }}
                </div>
              </div>
            </div>
          </div>  
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-circle"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Konsul Close</h4>
                </div>
                <div class="card-body">
                {{ DB::table('tickets')->where('status','=','Closed')->count() }}
                </div>
              </div>
            </div>
          </div>                  
        </div>
        <div class="row">
          <div class="col-lg-8 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4>Logo</h4>
              </div>
              <div class="card-body">
              <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4>Recent Activities</h4>
              </div>
              <div class="card-body">
              @foreach($data as $ticket)             
                <ul class="list-unstyled list-unstyled-border">
                  <li class="media">
                    <div class="media-body">
                      <div class="media-title">{{ $ticket->name }}</div>
                      <div class="float-right text-primary"><a href="{{ url('tickets/' . $ticket->ticket_id) }}">{{ $ticket->ticket_id}}</a></div>
                      <span class="text-small text-muted">{{ $ticket->message}}</span>
                    </div>
                  </li>
                </ul>
              @endforeach
                <div class="text-center pt-1 pb-1">
                  <a href="{{ url('admin/tickets') }}" class="btn btn-primary btn-lg btn-round">
                    View All
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
  </div>
@elseif (Auth::user()->level=="REDAKSI")
  <div class="main-content">
      <section class="section">
        <div class="section-header">
          <h1>Dashboard</h1>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="far fa-newspaper"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Postings</h4>
                </div>
                <div class="card-body">
                {{ DB::table('postings')->count() }}
                </div>
              </div>
            </div>
          </div>                  
        </div>
        <div class="row">
          <div class="col-lg-8 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4>Logo</h4>
              </div>
              <div class="card-body">
              <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
              </div>
            </div>
          </div>
        </div>
      </section>
  </div>
@elseif (Auth::user()->level=="USERS")
<div class="main-content">
      <section class="section">
        <div class="section-header">
          <h1>Dashboard</h1>
        </div>
        <div class="row">
        <div class="col-lg-8 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4>Selamat Datang, {{ Auth::user()->name }}</h4>
              </div>
            </div>
          </div>
          <div class="col-lg-8 col-md-12 col-12 col-sm-12">
            <div class="card">
              <div class="card-header">
                <h4></h4>
              </div>
              <div class="card-body">
              <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
              </div>
            </div>
          </div>
        </div>
      </section>
</div>
@endif