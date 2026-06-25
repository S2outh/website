# S²OUTH website

The website for **S²OUTH** — the **S**tudent's **S**ub-**O**rbital **U**nified
**T**elemetry **H**andler, a project by [WüSpace](https://wuespace.de).

S²OUTH is a modern, reliable telemetry system that provides live telemetry —
sensor data and high-precision pose estimation — for the full duration of a
suborbital spaceshot flight, plus a secondary high-bandwidth RF link for live
HD video. The site presents the project, its flight-proven _South Cube_
predecessor, the _N₂ORTH_ rocket it is being developed for, and the project's
supporters.

## Tech stack

- [SvelteKit](https://svelte.dev/docs/kit) with Svelte 5 (runes mode)
- TypeScript
- [Bun](https://bun.sh) as package manager and runtime
- [`svelte-adapter-bun`](https://github.com/gornostay25/svelte-adapter-bun) — the
  production build runs as a Bun HTTP server
- [`@sveltejs/enhanced-img`](https://svelte.dev/docs/kit/images) — images are
  optimized at build time (AVIF/WebP + responsive variants)
- [Nix](https://nixos.org) (flake) for a reproducible dev shell and the
  production container image

## Development

A [Nix](https://nixos.org) flake provides the toolchain (Bun, `svelte-check`,
language servers). With [direnv](https://direnv.net) the environment loads
automatically via `.envrc`; otherwise enter it manually:

```sh
nix develop
```

The dev shell also sets `LD_LIBRARY_PATH` so that `sharp` (used by
`enhanced-img` to optimize images) can load its native module on NixOS.

Then install dependencies and start the dev server:

```sh
bun install
bun run dev          # or: bun run dev -- --open
```

Type-check the project:

```sh
bun run check
```

## Images

Images live in `src/lib/assets/` and are referenced directly by path on the
`<enhanced:img>` element, e.g.:

```svelte
<enhanced:img src="$lib/assets/pictures/home/FullAssembly.jpg" alt="…" />
```

`@sveltejs/enhanced-img` generates the optimized AVIF/WebP and responsive
variants at build time, so **commit only a single reasonably-sized source per
image** — there's no need to add huge originals. Oversized sources blow up both
the dev-server transform time and the build (`sharp` re-encodes every variant).

Before committing a new photo, downscale it and bake in its rotation. Cap the
images at ~2560px:

```sh
# other images
mogrify -auto-orient -strip -resize '2560x2560>'
```

- `-auto-orient` rotates the pixels to match the photo's EXIF orientation —
  **run it before `-strip`**. Stripping the EXIF orientation flag without
  rotating first leaves phone photos sideways.
- `-strip` removes metadata; `-resize 'NxN>'` only ever shrinks (never upscales).

## Building

```sh
bun run build        # outputs the Bun server to build/
bun run start        # runs build/index.js (listens on $PORT, default 3000)
```

## Deployment

Deployment is container-based. The app is packaged into an OCI image with Nix:

```sh
nix build .#container
docker load < result
```

On every push to `main`, the
[`publish_page.yml`](.github/workflows/publish_page.yml) workflow builds this
image and pushes it to the GitHub Container Registry
(`ghcr.io/<owner>/south-website`), tagged with both `latest` and the commit SHA.
The container runs the Bun server on `$PORT` (default `3000`).
