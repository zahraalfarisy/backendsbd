# Menggunakan image Node.js
FROM node:16

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json
COPY package*.json ./

# Instal dependensi
RUN npm install

# Menyalin semua file ke dalam container
COPY . .

# Menentukan port yang digunakan
EXPOSE 3000

# Menjalankan aplikasi
CMD ["npm", "start"]
