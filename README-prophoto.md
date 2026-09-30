# ProPhoto Editor — Photo · Album · Video

**File:** `prophoto-editor.html` — one file, no install. Double-click to open in Chrome or Edge (best), or Firefox/Safari with WebGL2.
The older `proedit-studio-ultimate.html` is untouched.

Header switch: **Photo** · **Video** · **Album**.

## Photo editor (GPU, 16-bit float, linear light)
- Live histogram + clipping overlay, 10 Pro Looks with intensity, Pro Auto, Basic / Color (HSL, 3-way grading) / Detail / Light (relight engine) / Curves, Crop & straighten.
- Skin-safe by design: natural skin evening keeps pore texture; vibrance and grading are skin-protected; no warping / added objects.
- Tiled 4K/8K export, batch sync, ZIP / folder export.
- **Save edits as new look**: in the Looks tab, **★ Save edits as new look** turns the current photo's colour & tone edits (sliders, HSL, grading, curves, and any look applied) into a custom look in the Pro Looks grid. It stays saved in the browser between sessions and works with the intensity slider on any other photo. Crop and rotation are never included. Hover a ★ look and click **×** to delete it.
- **Top 5 photo tools** (top of the Looks tab): Auto Enhance · Filters & Looks · Natural Beauty · Crop & Ratio · Album.

## Album Creator  (Photo → Album, or the “Album” tab in Top 5)
- **50+ occasion templates** in 5 groups: Indian weddings (Hindu, Punjabi, South Indian, Telugu, Kerala Kasavu, Bengali, Gujarati, Marathi, Nikah, Christian, Rajputana), wedding functions (Engagement, Haldi, Mehendi, Sangeet, Reception, Pre-wedding, Bridal), family milestones (Baby shower/Godh Bharai, Newborn, Naming/Annaprashan, Birthdays, Anniversary, Silver Jubilee, Griha Pravesh, Graduation, Family, Maternity, Travel), festivals (Diwali, Holi, Ganesh Chaturthi, Navratri, Durga Puja, Onam, Pongal, Raksha Bandhan, Eid, Lohri, Christmas) and world occasions.
  Each has its own palette, fonts, ornaments (mandala, lotus, diya, marigold toran, temple/phulkari/arabesque/alpona borders, balloons, confetti, snow, lanterns…) and native-script title (Hindi, Tamil, Telugu, Bengali, Malayalam, Gujarati, Punjabi).
- **Auto-create** from your photos: cover, title page, story spreads, thank-you page. Layout engine scores 18 page layouts (plus 3 cover styles) against each photo's shape to minimise cropping; Classic / Story / Cinematic / Collage moods; Airy / Balanced / Dense.
- Edit like a pro: drag photos from the tray, drag frames to swap, Shift+drag to reposition, wheel to zoom, per-frame DPI check, margin / gap / matte / rounded corners, per-spread text with your own fonts, chapter / blessing / thank-you pages, reorder spreads.
- Sizes: 12×30, 12×36, 12×24, 10×20, 8×16, A3, A4, square, Instagram 4:5, Stories 9:16. Optional 3 mm bleed.
- **Export PDF** (one page per spread) or **JPEG ZIP** at 150 / 200 / 300 dpi — photos are re-rendered from your full-resolution originals with all edits applied.
- Flip-book preview, and **Make video** (turns the album into a slideshow video).

## Video Editor  (Video tab)
- Multi-clip timeline: import video / photos / music, drag to reorder, trim edges, split (S), duplicate, delete, zoom.
- **Same GPU colour engine as photos**: Looks, exposure, curves, HSL, grading, sharpen, denoise, natural skin, bloom, grain, vignette apply to the selected clip in real time; Pro Auto and histogram work on video too.
- Speed 0.25–4×, volume, fades, 6 transitions (crossfade, dip, slide, wipe, zoom), Ken Burns, fit / fill with blurred background (InShot-style), canvas ratios 16:9 · 9:16 · 1:1 · 4:5 · 4:3 · 21:9.
- Text overlays in any language with animations (fade, slide, pop, typewriter), presets (title, lower third, caption, Hindi greeting), music track with fades.
- **Top 5 video tools**: Trim & Split · Filters & Grade · Text & Captions · Music · Speed.
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
