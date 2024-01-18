
# Final Project 1

(Backend) REST API untuk Online Debit/Credit Payment Detail.

Detail data:

```
"paymentDetailId": integer
"cardOwnerName": string
"cardNumber": string
"expirationDate": string
"securityCode": string
```

---
Langkah-langkah menjalankan project:

1. Download folder finalproject1.
2. Buka terminal (command prompt atau Git Bash) ke folder di mana project tersimpan, lalu ketik ```cd PaymentDetailAPI```. Ini adalah directory utama project.
3. Di terminal, ketik `dotnet run`.
4. Jika berhasil akan terlihat
```
info: Microsoft.Hosting.Lifetime[0]
      Now listening on: https://localhost:5001
info: Microsoft.Hosting.Lifetime[0]
      Now listening on: http://localhost:5000
```
di terminal. 
Kemudian Anda dapat memilih dua opsi untuk mencoba API sebagai berikut:
- Menggunakan Swagger: Buka browser pilihan, ketik `https://localhost:5001/swagger/index.html`* di URL bar. Akan tampil interface API index di Swagger. 5001 dapat diganti 5000.
- Menggunakan Postman: Buka Postman dan import PaymentDetail.postman_collection.json di folder finalproject1.