<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Ticket;
use App\Models\User;
use App\Exports\TicketExport;
use Illuminate\Http\Request;
// use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use PDF;
use Excel;
// use App\Mailers\AppMailer;

class TicketsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $tickets = Ticket::paginate(10);
        $user = User::all();
        $category = Category::all();
        // $id_useri = Auth::user()->id_useri;
        // $rowPengajuan = Pengajuan::where('nip',$nip)->paginate(5);
        $tickets = Ticket::join('users', 'users.id', '=' ,'tickets.user_id')
                            ->join('categories', 'categories.id', '=' ,'tickets.category_id')
                            ->select('tickets.*', 'users.name', 'categories.nama','categories.id_useri')
                            ->orderBy('created_at', 'DESC') 
                            ->latest()
                            ->paginate(10);
        return view('tickets.index', compact('tickets', 'category'));
    }

    // Report PDF
    public function export_pdf(){
        $users  = User::all();
        $tickets = Ticket::join('users', 'users.id', '=' ,'tickets.user_id')
                     ->select('tickets.*', 'users.name') 
                     ->orderBy('created_at', 'DESC')
                     ->paginate(10);

        $pdf = PDF::loadview('tickets.export-laporan-pdf',['tickets'=>$tickets], ['users'=>$users]);
        
    	return $pdf->download('laporan_tiket.pdf');
    }

     // Report PDF
     public function export_excel(){
        return Excel::download(new TicketExport, 'tiket_'.date('Y-m-d_h-m-s').'.xlsx');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('tickets.create', compact('categories'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    // (Request $request, AppMailer $mailer)
    {
        $this->validate($request, [
            'title' => 'required',
            'category' => 'required',
            'priority' => 'required',
            'message' => 'required'
        ]);
        $ticket = new Ticket([
            'title' => $request->input('title'),
            'user_id' => Auth::user()->id,
            'ticket_id' => strtoupper(Str::random(10)),
            'category_id' => $request->input('category'),
            'priority' => $request->input('priority'),
            'message' => $request->input('message'),
            'status' => "Open"
        ]);
        $ticket->save();
        // $mailer->sendTicketInformation(Auth::user(), $ticket);
        return redirect()->back()->with("status", "Ticket untuk Konsultasi dengan ID: #$ticket->ticket_id berhasil dibuat, Silahkan Lihat di Menu List Tiket");
    }
    public function userTickets()
    {
        $tickets = Ticket::where('user_id', Auth::user()->id)->paginate(10);
        return view('tickets.user_tickets', compact('tickets'));
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($ticket_id)
    {
        //
        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();
        return view('tickets.show', compact('ticket'));
    }

    public function close($ticket_id)
    // ($ticket_id, AppMailer $mailer)
    {
        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();
        $ticket->status = "Closed";
        $ticket->save();
        $ticketOwner = $ticket->user;
        // $mailer->sendTicketStatusNotification($ticketOwner, $ticket);
        return redirect()->back()->with("status", "The ticket has been closed.");
    }
}