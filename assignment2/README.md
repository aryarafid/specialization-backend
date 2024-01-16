# Assignment 2

Membuat database bank.sql, create tabel-tabel, insert data tiap tabel, dan me-run query-query Select.

#### Menampilkan data dari database bank:

1. Menampilkan semua data customers
```sql
SELECT * FROM customers
```

![no1](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no1.png)

2.	Menampilkan semua data employees
```sql
SELECT * FROM employees
```

![no2](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no2.png)

3. Menampilkan semua data offices
```sql
SELECT * FROM offices
```

![no3](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no3.png)

4.	Menampilkan semua data orderdetails
```sql
SELECT * FROM orderdetails
```

![no4](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no4.png)

5.	Menampilkan semua data orders
```sql
SELECT * FROM orders
```

![no5](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no5.png))

6.	Menampilkan semua data payments
```sql
SELECT * FROM payments
```

![no6](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no6.png)

7.	Menampilkan semua data productlines
```sql
SELECT * FROM productlines
```

![no7](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no7.png)

8.	Menampilkan semua data products
```sql
SELECT * FROM products
```

![no8](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no8.png)

9.	Menampilkan data dari tabel product dan productlines (menunjukkan relasi)
```sql
SELECT p.productName, p.quantityInStock, pl.productLine, pl.textDescription
FROM products p 
LEFT JOIN productlines pl
ON p.productLine = pl.productLine
```

![no9](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no9.png)

10.	Menampilkan data dari tabel customer, employees, dan office (menunjukkan relasi)
```sql
SELECT c.customerName, c.phone, e.firstName, e.officeCode, o.addressLine1, o.country
FROM customers c
INNER JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN offices o
ON e.officeCode = o.officeCode
```

![no10](https://github.com/aryarafid/specialization-backend/blob/main/assignment2/image/no10.png)
