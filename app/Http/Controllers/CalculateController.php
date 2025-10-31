<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\MutasiBank;
use App\Models\Zahir;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use PDO;

class CalculateController extends Controller {
    public static function calculateSelisih(Request $request) {
        $return = [];

        try {
            $validate = Validator::make($request->all(), [
                'dateFrom' => 'required',
                'dateTo' => 'required',
            ]);

            if ($validate->passes()) {
                $eloquent = true;
                $resultZahir = [];
                $resultMutasiBank = [];
                $totalSelisih = 0;

                if ($eloquent) {
                    $resultZahir = Zahir::selectRaw('
                        IFNULL(zahir_debet, (zahir_kredit * -1)) AS jumlah,
                        SUM(IFNULL(zahir_debet, (zahir_kredit * -1))) OVER (ORDER BY zahir_id) AS total
                    ')
                        ->whereBetween('zahir_tanggal', [$request['dateFrom'], $request['dateTo']])
                        ->get()->toArray();

                    $resultMutasiBank = MutasiBank::selectRaw('
                        IFNULL((mutasi_bank_debet * -1), mutasi_bank_kredit) AS jumlah,
                        SUM(IFNULL((mutasi_bank_debet * -1), mutasi_bank_kredit)) OVER (ORDER BY mutasi_bank_id) AS total
                    ')
                        ->whereBetween('mutasi_bank_tanggal', [$request['dateFrom'], $request['dateTo']])
                        ->get()->toArray();
                } else {
                    $pdo = DB::connection()->getPdo();
                    $statement = $pdo->prepare('CALL sp_get_selisih("' . $request['dateFrom'] . '", "' . $request['dateTo'] . '")');
                    $statement->execute();
                    $resultZahir = $statement->fetchAll(PDO::FETCH_ASSOC);
                    $statement->nextRowset();
                    $resultMutasiBank = $statement->fetchAll(PDO::FETCH_ASSOC);
                }

                $totalZahir = $resultZahir[sizeof($resultZahir) - 1]['total'];
                $totalMutasiBank = $resultMutasiBank[sizeof($resultMutasiBank) - 1]['total'];
                $totalSelisih = $resultZahir[sizeof($resultZahir) - 1]['total'] - $resultMutasiBank[sizeof($resultMutasiBank) - 1]['total'];
                
                $return['data']['resultZahir'] = $resultZahir;
                $return['data']['resultMutasiBank'] = $resultMutasiBank;
                $return['data']['totalZahir'] = $totalZahir;
                $return['data']['totalMutasiBank'] = $totalMutasiBank;
                $return['data']['totalSelisih'] = $totalSelisih;
                $return['status'] = true;
                $return['message'] = 'Get data success';
            } else {
                $return['status'] = false;
                $return['message'] = 'Validation failed';
                $return['error'] = $validate->failed();
            }
        } catch (Exception $exception) {
            $return['status'] = false;
            $return['message'] = $exception->getMessage();
        }

        return $return;
    }
}
