<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   -->
    <!-- Modal View PDF -->
    <div class="modal fade in" id="showInfo" tabindex="-1" role="dialog" aria-hidden="true" style="display: block;">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" onclick="document.getElementById('showInfo').style.display='none'" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <h5 class="modal-title">Pengumuman</h5>
                </div>
                <div class="modal-body">
                    <img class="img-responsive" src="{{ asset('images-info/laporan-aai-2024.jpg') }}" alt="" title="" style="width:50%">
                </div>
                <p style="text-align:center;"><b>Laporan AAI 2024</b></p>
                <div class="modal-footer text-center">
                    <a class="button right" href="{{ asset('file-upload/laporan-kinerja-aai-jakarta-2024.pdf') }}" rel="nofollow" target="_blank">DOWNLOAD<i class="fa fa-download"></i></a>
                    <button type="button" onclick="document.getElementById('showInfo').style.display='none'" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
                    <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
                </div>
            </div>
        </div>
    </div>
<script>
    function hide(id) {
        var close = document.getElementById(id);
        close.style.display="none";
        console.log(close.style.display);
        setTimeout(() => {console.log(close.style.display);});
     }
</script>