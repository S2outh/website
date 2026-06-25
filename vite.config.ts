import { sveltekit } from '@sveltejs/kit/vite';
import { enhancedImages } from '@sveltejs/enhanced-img';
import { defineConfig } from 'vite';

export default defineConfig({
  // enhancedImages() must come before sveltekit() so it can preprocess
  // <enhanced:img> elements and transform images at build time.
  plugins: [enhancedImages(), sveltekit()]
});
