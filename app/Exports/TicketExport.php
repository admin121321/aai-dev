<?php

namespace App\Exports;

use App\Models\Ticket;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class TicketExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     $tickets = Ticket::join('users', 'users.id', '=' ,'tickets.user_id')
    //                  ->join('categories', 'categories.id', '=' ,'tickets.category_id')
    //                  ->select('users.name', 'categories.nama', 'ticket_id', 'title', 'priority', 'message', 'status') 
    //                  ->orderBy('created_at', 'DESC');
    //                 //  ->paginate(10);

    //     return collect($tickets);
    // }

    public function headings(): array
    {
        return [
            'Nama Pemohon','Advokat','Kategori', 'ID Tiket', 'Judul', 'Prioritas', 'Pesan', 'Status', 'Tgl'
        ];
    }

    public function collection()
    {
        return Ticket::getCustom();
    }
}
