# TODO_RUN - memastikan grafana-monitoring berjalan di komputer

## Step 1 - Cek cara jalan saat ini
- [x] Jalankan `run_app.bat` sekali
- [ ] Jika error: catat error screen/console

## Step 2 - Perbaiki skrip start
- [ ] Edit `run_app.bat` supaya:
  - [x] Pastikan backend siap sebelum membuka frontend
  - [ ] pastikan `pip install` tidak gagal karena working directory
  - [x] akses UI via URL `http://127.0.0.1:8000/`

## Step 3 - Cek runtime backend
- [ ] Pastikan endpoint `/api/devices` bisa diakses
- [ ] Pastikan websocket `/ws` tidak terus reconnect

## Step 4 - Cek realtime chart
- [ ] Pastikan Chart.js dari CDN ter-load (butuh internet)
- [ ] Pastikan canvas chart update

## Step 5 - Dokumentasi
- [ ] Tambahkan petunjuk cara run manual di README (jika diperlukan)

