
// eagerly import every image under assets so Vite can statically analyze the glob.
// Keys are full paths like "/src/lib/assets/pictures/mars.jpg".
const all_images = import.meta.glob<string>(
  '$lib/assets/**/*.{png,jpg,jpeg,webp,svg}',
  { eager: true, query: '?url', import: 'default' }
);

// Utility function to load images from a subfolder.
// Returns a dict of { filename (no extension): url } for files directly in that folder.
export function load_images(folder: string): Record<string, string> {
  const prefix = `/src/lib/assets/${folder}/`;
  return Object.fromEntries(
    Object.entries(all_images)
      .filter(([path]) => path.startsWith(prefix))
      .map(([path, url]) => [
        path.slice(prefix.length).replace(/\.\w+$/, ''),
        url,
      ])
  );
}
