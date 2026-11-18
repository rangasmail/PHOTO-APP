# ProPhoto Editor — Photo · Album · Video

**File:** `prophoto-editor.html` — no install. Double-click to open in Chrome or Edge (best), or Firefox/Safari with WebGL2. To use Sony ARW files, run `powershell -ExecutionPolicy Bypass -File .\serve-photo-app.ps1` and open `http://127.0.0.1:8765/`; the RAW decoder is bundled and served locally.
The older `proedit-studio-ultimate.html` is untouched.

Header switch: **Photo** · **Video** · **Album**.

## Photo editor (GPU, 16-bit float, linear light)
- Live histogram + clipping overlay, 15 built-in Pro Looks with intensity (including four curve-based cinematic film looks), Pro Auto, Basic / Color (HSL, 3-way grading) / Detail / Light (relight engine) / Curves, Crop & straighten.
- Imports Sony `.ARW` camera RAW files, including drag-and-drop. RAW processing happens in your browser; the source photo is not uploaded. The local launcher serves the bundled WebAssembly decoder and enables the browser isolation it requires.
- Skin-safe by design: natural skin evening keeps pore texture; vibrance and grading are skin-protected; no warping / added objects.
- Tiled 4K/8K export, batch sync, ZIP / folder export.
- **SriRangA**: save a fully edited photo as a persistent reference, then apply all edits or only selected categories (tone, color/HSL, detail, effects, curves, look, masks/retouch, crop/rotation) to all other or selected photos. Each destination has its own undo step.
- **Save edits as new look**: in the Looks tab, **★ Save edits as new look** turns the current photo's colour & tone edits (sliders, HSL, grading, curves, and any look applied) into a custom look in the Pro Looks grid. It stays saved in the browser between sessions and works with the intensity slider on any other photo. Crop and rotation are never included. Hover a ★ look and click **×** to delete it.
- **Top 5 photo tools** (top of the Looks tab): Auto Enhance · Filters & Looks · Natural Beauty · Crop & Ratio · Album.

## Album Creator  (Photo → Album, or the “Album” tab in Top 5)
- **50+ occasion templates** in 5 groups: Indian weddings (Hindu, Punjabi, South Indian, Telugu, Kerala Kasavu, Bengali, Gujarati, Marathi, Nikah, Christian, Rajputana), wedding functions (Engagement, Haldi, Mehendi, Sangeet, Reception, Pre-wedding, Bridal), family milestones (Baby shower/Godh Bharai, Newborn, Naming/Annaprashan, Birthdays, Anniversary, Silver Jubilee, Griha Pravesh, Graduation, Family, Maternity, Travel), festivals (Diwali, Holi, Ganesh Chaturthi, Navratri, Durga Puja, Onam, Pongal, Raksha Bandhan, Eid, Lohri, Christmas) and world occasions.
  Each has its own palette, fonts, ornaments (mandala, lotus, diya, marigold toran, temple/phulkari/arabesque/alpona borders, balloons, confetti, snow, lanterns…) and native-script title (Hindi, Tamil, Telugu, Bengali, Malayalam, Gujarati, Punjabi).
- **Auto-create** from your photos: cover, title page, story spreads, thank-you page. Layout engine scores 18 page layouts (plus 3 cover styles) against each photo's shape to minimise cropping; Classic / Story / Cinematic / Collage moods; Airy / Balanced / Dense.
- Edit like a pro: drag photos from the tray, drag frames to swap, Shift+drag to reposition, wheel to zoom, per-frame DPI check, margin / gap / matte / rounded corners, per-spread text with your own fonts, chapter / blessing / thank-you pages, reorder spreads.
- Print sizes: album spreads, A3/A4, square, and standard canvas sizes from 8×10 to 24×36 in; define a custom canvas from 4–48 in. Choose 150 / 200 / 300 dpi, optional 3 mm bleed, and trim marks.
- **Print & Export:** print-sized PDF, JPEG ZIP, lossless PNG ZIP, or a print-shop pack (PDF + JPEG spreads + a trim/DPI/bleed specification). Output notes include pixel dimensions; confirm color profile and binding requirements with your print shop.
- Flip-book preview, and **Make video** (turns the album into a slideshow video).

## Video Editor  (Video tab)
- Multi-clip timeline: import video / photos / music, drag to reorder, trim edges, split (S), duplicate, delete, zoom. Add picture-in-picture photo overlays to existing footage and animate their timing, position, size, rotation, opacity and fades.
- **Same GPU colour engine as photos**: Looks, exposure, curves, HSL, grading, sharpen, denoise, natural skin, bloom, grain, vignette apply to the selected clip in real time; Pro Auto and histogram work on video too.
- Speed 0.25–4× with per-section speed points, pitch-preserved playback where supported, volume, fades, soundtrack looping and optional source-audio ducking, 6 transitions (crossfade, dip, slide, wipe, zoom), Ken Burns, fit / fill with blurred background (InShot-style), canvas ratios 16:9 · 9:16 · 1:1 · 4:5 · 4:3 · 21:9.
- Text overlays in any language with animations (fade, slide, pop, typewriter), presets (title, lower third, caption, Hindi greeting), music track with fades.
- **Top 5 video tools**: Trim & Split · Filters & Grade · Text & Captions · Music · Speed.
- **Video stabilization**: analyze a video clip's camera movement, smooth the motion path, and adjust strength / edge crop. A clip-level sharpen control can help mild softness; it cannot restore detail lost to severe focus or motion blur.
- Slideshow from photos (edits baked in). Export MP4 (or WebM) at 720p–4K, 24/30/60 fps.

## Shortcuts
Photo: Ctrl+O · Ctrl+Z / Ctrl+Shift+Z · `\` compare · J clipping · F fit · 1 100% · C crop · ←/→ photos
Video: Space play/pause · S split · Del delete · ←/→ frame · Shift+←/→ 1 s · Ctrl+D duplicate

## Honest limits
- **Video export is real time** (2-minute video ≈ 2 minutes) using the browser's recorder; keep the tab open. MP4 needs a recent Chrome/Edge; otherwise WebM. 4K needs a strong GPU.
- Input video must be decodable by your browser (MP4/H.264, WebM). iPhone HEVC/MOV often is not in Chrome — convert or use Safari.
- Album typography uses Google Fonts when online; offline it falls back to system fonts (Segoe Script / Georgia / Nirmala UI). Use “Load my own font” for exact print typography.
- Occasion themes are designs, not religious/cultural authorities — every text is editable. Indian-script titles were written carefully but please proofread before printing.
- Exports drop EXIF/ICC (browser limitation); output is sRGB. Relight is a 2-D approximation.
