# menggunakan base image nodejs versi 14
FROM node:14

# pada docker containernya, akan menggunakan /app sebagai working directory
WORKDIR /app

# copy semua file pada folder ini kepada /app di container
COPY . .

# menentukan environment variable yang akan digunakan pada docker containernya
ENV NODE_ENV=production \
    DB_HOST=item-db

# install dependencies yang diperlukan untuk production lalu melakukan build
RUN npm install --production --unsafe-perm && npm run build

# mengexpose port 8080 sehingga dapat diakses dari luar sesuai mappingan port saat fase docker build
EXPOSE 8080

# menjalankan aplikasi node
CMD ["npm", "start"]
