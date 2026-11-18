$ErrorActionPreference = 'Stop'
$port = 8765
$htmlPath = Join-Path $PSScriptRoot 'prophoto-editor.html'
$rawPath = Join-Path $PSScriptRoot 'vendor\libraw-wasm'
$routes = @{
  '/' = @{ Path = $htmlPath; Type = 'text/html; charset=utf-8' }
  '/prophoto-editor.html' = @{ Path = $htmlPath; Type = 'text/html; charset=utf-8' }
  '/vendor/libraw-wasm/index.js' = @{ Path = (Join-Path $rawPath 'index.js'); Type = 'text/javascript; charset=utf-8' }
  '/vendor/libraw-wasm/worker.js' = @{ Path = (Join-Path $rawPath 'worker.js'); Type = 'text/javascript; charset=utf-8' }
  '/vendor/libraw-wasm/libraw.js' = @{ Path = (Join-Path $rawPath 'libraw.js'); Type = 'text/javascript; charset=utf-8' }
  '/vendor/libraw-wasm/libraw.wasm' = @{ Path = (Join-Path $rawPath 'libraw.wasm'); Type = 'application/wasm' }
}
$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add("http://127.0.0.1:$port/")

try {
  $listener.Start()
  $url = "http://127.0.0.1:$port/"
  Write-Host "ProPhoto Editor is serving at $url"
  Start-Process $url
  Write-Host 'Keep this window open. Press Ctrl+C to stop the server.'

  while ($listener.IsListening) {
    $context = $listener.GetContext()
    $response = $context.Response
    $response.Headers.Add('Cross-Origin-Opener-Policy', 'same-origin')
    $response.Headers.Add('Cross-Origin-Embedder-Policy', 'require-corp')
    $response.Headers.Add('Cross-Origin-Resource-Policy', 'cross-origin')

    $route = $routes[$context.Request.Url.AbsolutePath]
    if (-not $route) {
      $response.StatusCode = 404
      $response.Close()
      continue
    }

    $bytes = [System.IO.File]::ReadAllBytes($route.Path)
    $response.ContentType = $route.Type
    $response.ContentLength64 = $bytes.Length
    if ($context.Request.HttpMethod -ne 'HEAD') {
      $response.OutputStream.Write($bytes, 0, $bytes.Length)
    }
    $response.Close()
  }
} finally {
  $listener.Stop()
  $listener.Close()
}
