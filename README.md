git clone https://github.com/yourusername/spk-ahp.git
cd spk-ahp

cd backend
npm install

# Server
PORT=5000
NODE_ENV=development

# Database
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=db_ahp
DB_PORT=3306

# JWT
JWT_SECRET=your-super-secret-jwt-key-change-this
JWT_EXPIRE=7d

# Buat database
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS db_ahp"

# Jalankan migrasi
npm run migrate

# Jalankan seeder
npm run seed

cd ../frontend
npm install

cd backend
npm run dev

cd frontend
npm run dev
