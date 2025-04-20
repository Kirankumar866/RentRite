# RentRite - Property Management Application

RentRite is a modern property management application built with Next.js, React, and Tailwind CSS. It helps landlords track properties, tenants, rent payments, and maintenance requests.

> **Note:** The backend is not yet developed. This is a frontend-only application with mock data. Backend integration is coming soon.

## Features

- **Property Management**: Add, edit, and track properties
- **Tenant Management**: Manage tenant information and lease details
- **Rent Tracking**: Monitor rent payments and generate reports
- **Maintenance Requests**: Track and manage maintenance tickets
- **Reports**: Generate monthly income summaries and export data
- **Responsive Design**: Works on desktop and mobile devices
- **Dark Mode Support**: Toggle between light and dark themes

## Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/Kirankumar866/RentRite.git
   cd small-landlord-rent-tracker
   ```

2. Navigate to the frontend directory:
   ```
   cd frontend
   ```

3. Install dependencies:
   ```
   npm install
   ```

## Running the Application

### Development Mode

To run the application in development mode:

```
cd frontend
npm run dev
```

The application will be available at [http://localhost:3000](http://localhost:3000).

### Production Mode

To build and run the application in production mode:

```
cd frontend
npm run build
npm start
```

## Project Structure

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

## Available Scripts

- `npm run dev`: Starts the development server
- `npm run build`: Builds the application for production
- `npm start`: Runs the production build
- `npm run lint`: Runs ESLint to check for code issues

## Troubleshooting

### PowerShell Command Issues

If you're using PowerShell and encounter errors with `&&` operator, use semicolons instead:

```
cd frontend; npm run dev
```

Or run commands separately:

```
cd frontend
npm run dev
```

### Security Vulnerabilities

If you see security vulnerability warnings, run:

```
cd frontend
npm audit fix --force
```

## Deployment

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
   ```
   cd frontend
   npm run build
   ```
2. Start the server:
   ```
   npm start
   ```

## Backend Development Status

The backend for this application is not yet developed. Currently, the application uses mock data for demonstration purposes. Backend integration with features like:

- User authentication and authorization
- Persistent data storage
- Real-time updates
- File uploads for lease documents
- Payment processing

is planned for future development.

## License

[MIT License](LICENSE)

## Contact

For questions or support, please contact [kirankumar201018@gmail.com](mailto:kirankumar201018@gmail.com). 