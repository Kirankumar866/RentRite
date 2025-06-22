# RentRite - Property Management Platform

A modern, responsive property management platform built with Next.js and TypeScript.

## 🚀 Quick Start

1. Navigate to the frontend directory:

   ```bash
   cd frontend
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Run the development server:

   ```bash
   npm run dev
   ```

4. Open [http://localhost:3000](http://localhost:3000) in your browser

## 📁 Project Structure

```
frontend/
├── src/
│   ├── app/                 # Next.js App Router pages
│   │   ├── page.tsx        # Homepage
│   │   ├���─ properties/     # Properties management
│   │   ├── tenants/        # Tenants management
│   │   ├── payments/       # Payment tracking
│   │   ├── maintenance/    # Maintenance requests
│   │   ├── reports/        # Financial reports
│   │   ├── layout.tsx      # Root layout
│   │   └── globals.css     # Global styles
│   ├── components/         # Reusable components
│   │   ├── Navbar.tsx      # Main navigation
│   │   ├── MobileMenu.tsx  # Mobile navigation
│   │   └── NavbarThemeToggle.tsx
│   └── contexts/           # React contexts
│       └── ThemeContext.tsx
├── package.json            # Dependencies
├── tailwind.config.js      # Tailwind CSS config
├── tsconfig.json          # TypeScript config
└── next.config.js         # Next.js config
```

## ✨ Features

- 🏠 **Property Management**: Add, edit, view properties with status tracking
- 👥 **Tenant Management**: Complete tenant lifecycle with multi-step onboarding
- 💰 **Payment Tracking**: Payment status monitoring and history
- 🔧 **Maintenance Requests**: Request management with priority levels
- 📊 **Financial Reports**: Interactive charts and Excel export
- 🌙 **Dark/Light Theme**: System-aware theme switching
- 📱 **Mobile Responsive**: Mobile-first responsive design
- 📈 **Interactive Charts**: Revenue analytics with Recharts

## 🛠️ Technologies

- **Frontend**: Next.js 13+ (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Charts**: Recharts
- **State Management**: React Hooks
- **File Export**: XLSX library
- **Icons**: SVG-based icon system

## 📦 Installation & Setup

### Prerequisites

- Node.js 18.0 or later
- npm or yarn package manager

### Step-by-Step Installation

1. **Extract the project files** to your desired directory

2. **Navigate to the frontend directory**:

   ```bash
   cd frontend
   ```

3. **Install dependencies**:

   ```bash
   npm install
   ```

4. **Start development server**:

   ```bash
   npm run dev
   ```

5. **Open your browser** and visit: `http://localhost:3000`

## 🎨 Features Overview

### Navigation

- **Fixed Navigation Bar**: Always accessible across all pages
- **Mobile Menu**: Collapsible hamburger menu with smooth animations
- **Theme Toggle**: Seamless dark/light mode switching

### Properties Management

- Property listing with visual cards
- Add/Edit/View property modals
- Status tracking (Available, Occupied, Maintenance)
- Image handling and property details

### Tenants Management

- Complete tenant directory
- Multi-step application process:
  - Personal Information
  - Property Selection
  - Financial Information
  - Document Upload
- Edit/View tenant profiles
- Lease management

### Payment Tracking

- Payment dashboard with statistics
- Status tracking (Paid, Pending, Overdue, Partial)
- Payment history and recording
- Multiple payment methods support

### Maintenance System

- Request dashboard with priority levels
- Status management (Open, In-Progress, Completed, Cancelled)
- Bidirectional status updates
- Cost tracking and assignment

### Financial Reports

- Interactive revenue charts
- Monthly revenue trends
- Revenue by unit and tenant
- Occupancy analysis
- Excel export functionality

## 📱 Responsive Design

The application is built with a mobile-first approach:

- **Mobile**: Optimized for phones (320px+)
- **Tablet**: Enhanced layout for tablets
- **Desktop**: Full-featured desktop interface
- **Touch-Friendly**: Appropriate touch targets

## 🎯 Development Commands

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run start        # Start production server
npm run lint         # Run ESLint
npm run type-check   # Run TypeScript compiler
```

## 🚀 Deployment

### Vercel (Recommended)

```bash
npm i -g vercel
vercel
```

### Other Platforms

- **Netlify**: Deploy the build output
- **Docker**: Use provided Dockerfile
- **Static Hosting**: Configure for static export

## 📖 Documentation

- **PRD**: See `RentRite_PRD.md` for detailed product requirements
- **API Documentation**: Component interfaces and data models
- **Setup Guide**: Complete installation and configuration
- **Deployment Guide**: Production deployment instructions

## 🔧 Configuration

### Environment Variables

Create `.env.local` in the frontend directory:

```env
NEXT_PUBLIC_APP_NAME=RentRite
NEXT_PUBLIC_APP_VERSION=1.0.0
```

### Customization

- **Styling**: Modify `tailwind.config.js` for theme customization
- **Components**: Extend components in `src/components/`
- **Data Models**: Update interfaces in page components

## 🔒 Security

- HTTPS configuration
- Input validation
- XSS protection
- CSRF protection
- Secure headers

## 📈 Performance

- Automatic code splitting with Next.js
- Image optimization
- Bundle optimization
- React hooks optimization (useCallback, useMemo)
- Responsive loading

## 🐛 Troubleshooting

### Common Issues

1. **Port already in use**:

   ```bash
   npm run dev -- --port 3001
   ```

2. **Dependency issues**:

   ```bash
   rm -rf node_modules package-lock.json
   npm install
   ```

3. **Build cache issues**:
   ```bash
   rm -rf .next
   npm run build
   ```

## 🤝 Contributing

1. Fork the project
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 📞 Support

For support and questions:

- Check the documentation files
- Review the code comments
- Refer to the PRD for detailed specifications

---

**RentRite** - Modern Property Management Made Simple
