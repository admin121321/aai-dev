<!-- 
<div class="row">
    <div class="comments">
        @foreach($ticket->comments as $comment)
            <div class="panel panel-@if($ticket->user->id === $comment->user_id){{"default"}}@else{{"success"}}@endif">
                <div class="panel panel-heading">
                    {{ $comment->user->name }}
                    <span class="pull-right">{{ $comment->created_at->format('Y-m-d') }}</span>
                </div>

                <div class="panel panel-body">
                    {{ $comment->comment }}
                </div>
            </div>
        @endforeach
    </div>
</div> -->

      <!-- Main Content -->
        <section class="section">
          <div class="section-header">
            <h1>Komentar</h1>
          </div>
          @foreach($ticket->comments as $comment)
          <div class="section-body-@if($ticket->user->id === $comment->user_id){{'default'}}@else{{'success'}}@endif">
            <h2 class="section-title">{{ $comment->created_at->format('Y-m-d') }}</h2>
            <div class="row">
              <div class="col-12">
                <div class="activities">
                  <div class="activity">
                    <div class="activity-icon bg-primary text-white shadow-primary">
                      <i class="fas fa-trash"></i>
                    </div>
                    <div class="activity-detail">
                      <div class="mb-2">
                        <span class="text-job">{{ $comment->user->name }}</span>
                        <span class="bullet"></span>
                        <a class="text-job" href="#">View</a>
                        <div class="float-right dropdown">
                          <a href="#" data-toggle="dropdown"><i class="fas fa-ellipsis-h"></i></a>
                          <div class="dropdown-menu">
                            <div class="dropdown-title">Options</div>
                            <a href="#" class="dropdown-item has-icon"><i class="fas fa-eye"></i> View</a>
                            <a href="#" class="dropdown-item has-icon"><i class="fas fa-list"></i> Detail</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item has-icon text-danger" data-confirm="Wait, wait, wait...|This action can't be undone. Want to take risks?" data-confirm-text-yes="Yes, IDC"><i class="fas fa-trash-alt"></i> Archive</a>
                          </div>
                        </div>
                      </div>
                      <p>{{ $comment->comment }}</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </section>