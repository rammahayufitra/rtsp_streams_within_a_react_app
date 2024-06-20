# Menggunakan Node.js versi 14 sebagai base image
FROM node:14

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json (jika ada) ke dalam container
COPY package*.json ./

# Menginstall dependencies
RUN npm install

# Menyalin semua file dan direktori dari proyek ke dalam container
COPY . .

# # Membuat build dari aplikasi React
# RUN npm run build

# # Menambahkan server sederhana untuk melayani aplikasi React
# RUN npm install -g serve

# Menentukan port yang akan diekspos
EXPOSE 3000

# Menjalankan server untuk melayani aplikasi React
# CMD ["serve", "-s", "build", "-l", "3000"]
