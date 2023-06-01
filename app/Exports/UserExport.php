<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class UserExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // getCustome dari Model
    public function collection()
    {
        $records = User::select("users.id_anggota", "users.name", "users.t_lahir", "users.tgl_lahir",
                    "users.j_k", "users.no_telpn", "users.email", "users.kategori", "users.inst",
                    "users.nrk", "users.nip", "users.no_ser_kar", "users.pang", "users.gol",
                    "users.tmt_pang", "users.ting", "users.tmt_ting", "users.u_k", "users.level",
                    "users.is_admin", "users.verifikasi", "users.created_at", "users.updated_at",)
                    ->get();

        return collect($records);
    }
    
    public function headings(): array
    {
        return [
            "ID Anggota", 
            "Nama",
            "Tempat Lahir", 
            "Tanggal Lahir", 
            "Jenis Kelamin", 
            "No Handphone", 
            "Email", 
            "Kategori Pekerjaan", 
            "Institusi/Perusahaan/Perguruan Tinggi",  
            "NIP / NIK", 
            "NRK",
            "No. Seri Karpeg", 
            "Pangkat", 
            "Golongan", 
            "TMT Pangkat", 
            "Tingkatan", 
            "TMT Tingkatan", 
            "Unit Kerja", 
            "Level Akses", 
            "Level Konsul", 
            "Verifikasi Akun", 
            "Created at", 
            "Updated at",
        ];
    }
}
