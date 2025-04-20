# 🏠 RentRite - Property Management Application

<div align="center">
  <img src="https://img.shields.io/badge/Next.js-13-black?style=for-the-badge&logo=next.js&logoColor=white" alt="Next.js" />
  <img src="https://img.shields.io/badge/React-18-blue?style=for-the-badge&logo=react&logoColor=white" alt="React" />
  <img src="https://img.shields.io/badge/Tailwind-3-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS" />
  <img src="https://img.shields.io/badge/TypeScript-5-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" />
</div>

<br />

> ⚠️ **Note:** The backend is not yet developed. This is a frontend-only application with mock data. Backend integration is coming soon.

## 📋 Overview

RentRite is a modern property management application that helps landlords track properties, tenants, rent payments, and maintenance requests. Built with cutting-edge technologies, it offers a sleek, responsive interface that works seamlessly on all devices.

## ✨ Features

| Category | Features |
|----------|----------|
| 🏢 **Property Management** | Add, edit, and track properties |
| 👥 **Tenant Management** | Manage tenant information and lease details |
| 💰 **Rent Tracking** | Monitor rent payments and generate reports |
| 🔧 **Maintenance Requests** | Track and manage maintenance tickets |
| 📊 **Reports** | Generate monthly income summaries and export data |
| 📱 **Responsive Design** | Works on desktop and mobile devices |
| 🌓 **Dark Mode Support** | Toggle between light and dark themes |

## 🚀 Getting Started

### Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Kirankumar866/RentRite.git
   cd small-landlord-rent-tracker
   ```

2. **Navigate to the frontend directory:**
   ```bash
   cd frontend
   ```

3. **Install dependencies:**
   ```bash
   npm install
   ```

## 🏃‍♂️ Running the Application

### Development Mode

To run the application in development mode:

```bash
cd frontend
npm run dev
```

The application will be available at [http://localhost:3000](http://localhost:3000).

### Production Mode

To build and run the application in production mode:

```bash
cd frontend
npm run build
npm start
```

## 📁 Project Structure

```
small-landlord-rent-tracker/
├── frontend/                # Frontend application
│   ├── public/              # Static assets
│   │   └── ...
│   ├── src/                 # Source code
│   │   ├── app/             # Next.js app directory
│   │   ├── components/      # Reusable components
│   │   └── utils/           # Utility functions
│   ├── package.json         # Frontend dependencies
│   └── ...
└── README.md                # This file
```

## 🛠️ Available Scripts

| Script | Description |
|--------|-------------|
| `npm run dev` | Starts the development server |
| `npm run build` | Builds the application for production |
| `npm start` | Runs the production build |
| `npm run lint` | Runs ESLint to check for code issues |

## 🔧 Troubleshooting

### PowerShell Command Issues

If you're using PowerShell and encounter errors with `&&` operator, use semicolons instead:

```bash
cd frontend; npm run dev
```

Or run commands separately:

```bash
cd frontend
npm run dev
```

### Security Vulnerabilities

If you see security vulnerability warnings, run:

```bash
cd frontend
npm audit fix --force
```

## 🚀 Deployment

This application can be deployed to various platforms:

### Vercel (Recommended)

1. Push your code to GitHub
2. Connect your repository to Vercel
3. Vercel will automatically detect Next.js and deploy accordingly

### Netlify

1. Push your code to GitHub
2. Connect your repository to Netlify
3. Configure build settings:
   - Build command: `npm run build`
   - Publish directory: `.next`

### Traditional Hosting

1. Build the application:
   ```bash
   cd frontend
   npm run build
   ```
2. Start the server:
   ```bash
   npm start
   ```

## 🔄 Backend Development Status

The backend for this application is not yet developed. Currently, the application uses mock data for demonstration purposes. Backend integration with features like:

- 🔐 User authentication and authorization
- 💾 Persistent data storage
- ⚡ Real-time updates
- 📄 File uploads for lease documents
- 💳 Payment processing

is planned for future development.

## 📝 License

[MIT License](LICENSE)

## 📧 Contact

For questions or support, please contact [kirankumar201018@gmail.com](mailto:kirankumar201018@gmail.com).

---

<div align="center">
  <p>Made with ❤️ by Kirankumar</p>
</div> 