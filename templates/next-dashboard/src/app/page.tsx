export default function Home() {
  return (
    <main className="min-h-screen p-8">
      <div className="max-w-4xl mx-auto">
        <h1 className="text-3xl font-semibold mb-2">Dashboard</h1>
        <p className="text-muted-foreground mb-8">
          Welcome to your Momentus dashboard.
        </p>

        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          <div className="p-6 border border-border rounded-lg bg-background">
            <h2 className="font-medium mb-1">Getting Started</h2>
            <p className="text-sm text-muted-foreground">
              Edit <code className="font-mono text-xs">src/app/page.tsx</code> to customize this page.
            </p>
          </div>

          <div className="p-6 border border-border rounded-lg bg-background">
            <h2 className="font-medium mb-1">Database</h2>
            <p className="text-sm text-muted-foreground">
              Supabase is pre-configured. Run <code className="font-mono text-xs">supabase start</code> for local dev.
            </p>
          </div>

          <div className="p-6 border border-border rounded-lg bg-background">
            <h2 className="font-medium mb-1">Deploy</h2>
            <p className="text-sm text-muted-foreground">
              Push to GitHub and Vercel handles the rest.
            </p>
          </div>
        </div>
      </div>
    </main>
  );
}
