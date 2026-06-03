# TODO - Grafana Monitoring (Realtime RX/TX + Troubleshoot)

- [ ] 1) Buat project scaffold: `backend/` (FastAPI) + `frontend/` (dashboard)
- [ ] 2) Backend: SQLite schema `devices`, `metrics`, `events`
- [ ] 3) Backend: API + WebSocket untuk realtime metrics
- [ ] 4) Collector: realtime RX/TX dari **interface PC server** (uplink) + simpan historis per detik
- [ ] 5) Seed: masukkan perangkat/site dari daftar IP yang diberikan (gateway/LHG/router dan instansi)
- [ ] 6) Troubleshoot otomatis: ping gateway & internet (mis. 8.8.8.8) + generate `events`
- [x] 7) Frontend: UI Grafana-like (sidebar, panel realtime chart, tabel devices, menu Troubleshoot)
- [ ] 8) Jalankan otomatis: `run_app.bat` (start backend, start frontend, buka browser)
- [ ] 9) Dokumentasi: cara jalankan & menambah perangkat

- [x] 10) Tambahkan menu interface baru (WiFi RX/TX)
- [x] 11) Backend: deteksi interface WiFi (heuristik nama wlan/wifi/etc) dan broadcast realtime RX/TX sumber WiFi
- [x] 12) Frontend: halaman Interface menampilkan chart & stats WiFi dari websocket


