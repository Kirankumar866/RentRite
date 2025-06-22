#!/bin/bash

# RentRite Project Packaging Script
echo "📦 Creating RentRite project package..."

# Create a temporary directory for packaging
mkdir -p rentrite-project

# Copy all frontend files
echo "📁 Copying frontend files..."
cp -r frontend/ rentrite-project/

# Copy project documentation
echo "📄 Copying documentation..."
cp RentRite_PRD.md rentrite-project/ 2>/dev/null || echo "PRD file not found, skipping..."

# Copy root files
echo "🔧 Copying configuration files..."
cp README.md rentrite-project/ 2>/dev/null || echo "README not found, creating one..."

# Create README if it doesn't exist
if [ ! -f rentrite-project/README.md ]; then
cat > rentrite-project/README.md << 'EOF'
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


frontend/
├── src/
│   ├── app/                 # Next.js App Router pages
│   │   ├── page.tsx        # Homepage
│   │   ├── properties/     # Properties management
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

- 🏠 Property Management
- 👥 Tenant Management
- 💰 Payment Tracking
- 🔧 Maintenance Requests
- 📊 Financial Reports
- 🌙 Dark/Light Theme
- 📱 Mobile Responsive
- 📈 Interactive Charts

## 🛠️ Technologies

- Next.js 13+ (App Router)
- TypeScript
- Tailwind CSS
- Recharts
- React Hooks

## 📖 Documentation

See `RentRite_PRD.md` for detailed product requirements and specifications.
EOF
fi

# Create project structure documentation
echo "📋 Creating project structure documentation..."
cat > rentrite-project/PROJECT_STRUCTURE.md << 'EOF'
# RentRite Project Structure

## Frontend Architecture

### Pages Structure
```
src/app/
├── page.tsx                 # Homepage with hero section
├── layout.tsx              # Root layout with theme provider
├── globals.css             # Global styles and Tailwind imports
├── not-found.tsx           # 404 error page
├── properties/             
│   └── page.tsx            # Properties management page
├── tenants/                
│   └── page.tsx            # Tenants management page
├── payments/               
│   └── page.tsx            # Payment tracking page
├── maintenance/            
│   └── page.tsx            # Maintenance requests page
└── reports/                
    └── page.tsx            # Financial reports and analytics
```

### Components Structure
```
src/components/
├── Navbar.tsx              # Main navigation component
├── MobileMenu.tsx          # Mobile hamburger menu
├── NavbarThemeToggle.tsx   # Theme switcher component
└── ThemeToggle.tsx         # Legacy theme toggle (deprecated)
```

### Context Structure
```
src/contexts/
└── ThemeContext.tsx        # Global theme management
```

## Key Features by Page

### 🏠 Homepage (/)
- Hero section with gradient backgrounds
- Call-to-action buttons
- Feature highlights
- Responsive design

### 🏢 Properties (/properties)
- Property listing with cards
- Add/Edit/View property modals
- Property status management
- Image handling
- Search and filtering

### 👥 Tenants (/tenants)
- Tenant directory
- Multi-step tenant application wizard
- Edit/View tenant information
- Lease management
- Document upload system

### 💰 Payments (/payments)
- Payment dashboard
- Payment status tracking
- Payment history
- Statistics cards
- Payment recording system

### 🔧 Maintenance (/maintenance)
- Maintenance request dashboard
- Request creation and management
- Priority levels (Low, Medium, High, Urgent)
- Status tracking (Open, In-Progress, Completed, Cancelled)
- Bidirectional status updates

### 📊 Reports (/reports)
- Interactive financial charts
- Revenue analytics
- Occupancy analysis
- Excel export functionality
- Multiple chart types (Bar, Pie, Line)

## Data Models

### Property Interface
```typescript
interface Property {
  id: string
  address: string
  type: string
  bedrooms: number
  bathrooms: number
  rent: number
  status: 'available' | 'occupied' | 'maintenance'
  tenant?: string
  image?: string
}
```

### Tenant Interface
```typescript
interface Tenant {
  id: string
  name: string
  email: string
  phone: string
  property: string
  leaseStart: string
  leaseEnd: string
  rent: number
  deposit: number
  status: 'active' | 'inactive' | 'pending'
  avatar?: string
}
```

### Payment Interface
```typescript
interface Payment {
  id: string
  tenant: string
  property: string
  amount: number
  dueDate: string
  paidDate?: string
  status: 'paid' | 'pending' | 'overdue' | 'partial'
  method?: string
  notes?: string
}
```

### Maintenance Request Interface
```typescript
interface MaintenanceRequest {
  id: string
  tenant: string
  property: string
  title: string
  description: string
  priority: 'low' | 'medium' | 'high' | 'urgent'
  status: 'open' | 'in-progress' | 'completed' | 'cancelled'
  createdDate: string
  completedDate?: string
  assignedTo?: string
  cost?: number
}
```

## Styling System

### Tailwind CSS Configuration
- Custom color palette with blue-purple gradients
- Responsive breakpoints
- Dark mode support
- Custom animations and transitions

### Theme System
- Light/Dark mode toggle
- Persistent theme preferences
- Smooth theme transitions
- System preference detection

## Performance Optimizations

- Next.js App Router for automatic code splitting
- React hooks optimization (useCallback, useMemo)
- Responsive images
- Lazy loading
- Bundle optimization

## Development Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run start        # Start production server
npm run lint         # Run ESLint
npm run type-check   # Run TypeScript compiler
```
EOF

# Create installation instructions
echo "⚙️ Creating installation guide..."
cat > rentrite-project/INSTALLATION.md << 'EOF'
# RentRite Installation Guide

## Prerequisites

Before you begin, ensure you have the following installed:
- Node.js 18.0 or later
- npm or yarn package manager

## Installation Steps

### 1. Extract the Project
```bash
# Extract the downloaded archive
unzip rentrite-project.zip
cd rentrite-project
```

### 2. Install Dependencies
```bash
# Navigate to frontend directory
cd frontend

# Install all dependencies
npm install
```

### 3. Start Development Server
```bash
# Start the development server
npm run dev
```

The application will be available at `http://localhost:3000`

## Development Commands

```bash
# Development server
npm run dev

# Production build
npm run build

# Start production server
npm run start

# Run linting
npm run lint

# Type checking
npm run type-check
```

## Project Configuration

### Environment Variables
Create a `.env.local` file in the frontend directory for environment-specific settings:

```env
# Example environment variables
NEXT_PUBLIC_APP_NAME=RentRite
NEXT_PUBLIC_APP_VERSION=1.0.0
```

### Tailwind CSS
The project uses Tailwind CSS for styling. Configuration is in `tailwind.config.js`.

### TypeScript
TypeScript configuration is in `tsconfig.json` with strict type checking enabled.

## Troubleshooting

### Port Already in Use
If port 3000 is already in use:
```bash
npm run dev -- --port 3001
```

### Dependency Issues
Clear npm cache and reinstall:
```bash
rm -rf node_modules package-lock.json
npm install
```

### Build Issues
Clear Next.js cache:
```bash
rm -rf .next
npm run build
```

## Browser Support

- Chrome 88+
- Firefox 85+
- Safari 14+
- Edge 88+

## Next Steps

1. Explore the application features
2. Review the code structure
3. Customize styling and branding
4. Add backend integration
5. Deploy to production

For detailed feature documentation, see `RentRite_PRD.md`.
EOF

# Create deployment guide
echo "🚀 Creating deployment guide..."
cat > rentrite-project/DEPLOYMENT.md << 'EOF'
# RentRite Deployment Guide

## Production Build

### 1. Build the Application
```bash
cd frontend
npm run build
```

### 2. Test Production Build Locally
```bash
npm run start
```

## Deployment Options

### Vercel (Recommended)
1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. Deploy:
   ```bash
   vercel
   ```

### Netlify
1. Build the project:
   ```bash
   npm run build
   ```

2. Deploy the `out` directory to Netlify

### Docker Deployment
Create a `Dockerfile`:
```dockerfile
FROM node:18-alpine

WORKDIR /app
COPY frontend/package*.json ./
RUN npm ci --only=production

COPY frontend/ ./
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]
```

Build and run:
```bash
docker build -t rentrite .
docker run -p 3000:3000 rentrite
```

### Static Export
For static hosting (GitHub Pages, S3, etc.):

1. Modify `next.config.js`:
   ```javascript
   /** @type {import('next').NextConfig} */
   const nextConfig = {
     output: 'export',
     trailingSlash: true,
     images: {
       unoptimized: true
     }
   }
   module.exports = nextConfig
   ```

2. Build and export:
   ```bash
   npm run build
   ```

## Environment Configuration

### Production Environment Variables
```env
NODE_ENV=production
NEXT_PUBLIC_APP_URL=https://your-domain.com
```

### Security Considerations
- Enable HTTPS
- Configure CSP headers
- Set up proper CORS policies
- Implement rate limiting

## Performance Optimization

### Image Optimization
- Use Next.js Image component
- Configure image domains in `next.config.js`

### Bundle Analysis
```bash
npm install --save-dev @next/bundle-analyzer
```

Add to `next.config.js`:
```javascript
const withBundleAnalyzer = require('@next/bundle-analyzer')({
  enabled: process.env.ANALYZE === 'true',
})
module.exports = withBundleAnalyzer(nextConfig)
```

Run analysis:
```bash
ANALYZE=true npm run build
```

## Monitoring and Analytics

### Error Tracking
Consider integrating:
- Sentry for error monitoring
- LogRocket for session replay
- Google Analytics for usage tracking

### Performance Monitoring
- Core Web Vitals tracking
- Real User Monitoring (RUM)
- Synthetic monitoring

## Backup and Recovery

### Database Backup (Future)
When backend is implemented:
- Automated daily backups
- Point-in-time recovery
- Cross-region replication

### Code Backup
- Git repository with multiple remotes
- Automated code backups
- Version tagging for releases

## Health Checks

Create a health check endpoint:
```javascript
// pages/api/health.js
export default function handler(req, res) {
  res.status(200).json({ 
    status: 'healthy', 
    timestamp: new Date().toISOString(),
    version: process.env.NEXT_PUBLIC_APP_VERSION 
  })
}
```

## Scaling Considerations

### CDN Configuration
- Configure CDN for static assets
- Enable compression (gzip/brotli)
- Set appropriate cache headers

### Load Balancing
- Configure load balancer for high traffic
- Implement session affinity if needed
- Set up auto-scaling groups

## Security Checklist

- [ ] HTTPS enabled
- [ ] Security headers configured
- [ ] Dependencies updated
- [ ] Environment variables secured
- [ ] Input validation implemented
- [ ] CORS properly configured
- [ ] Rate limiting enabled
- [ ] Authentication implemented (future)
EOF

# Create archive
echo "📦 Creating project archive..."
tar -czf rentrite-project.tar.gz rentrite-project/

# Create zip archive
if command -v zip &> /dev/null; then
    zip -r rentrite-project.zip rentrite-project/
    echo "✅ Created rentrite-project.zip"
fi

echo "✅ Created rentrite-project.tar.gz"
echo ""
echo "📁 Project packaged successfully!"
echo "📦 Files created:"
echo "   - rentrite-project.tar.gz"
if command -v zip &> /dev/null; then
    echo "   - rentrite-project.zip"
fi
echo ""
echo "📋 Package contents:"
echo "   - Complete frontend source code"
echo "   - Project documentation (PRD)"
echo "   - Installation guide"
echo "   - Deployment guide"
echo "   - Project structure documentation"
echo "   - README with quick start"
echo ""
echo "🚀 To use the project:"
echo "   1. Extract the archive"
echo "   2. cd frontend && npm install"
echo "   3. npm run dev"

# Cleanup
rm -rf rentrite-project/
