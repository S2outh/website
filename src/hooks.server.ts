import type { Handle } from '@sveltejs/kit';

export async function handle({ event, resolve }: Parameters<Handle>[0]) {
  return resolve(event, {
    preload: ({ type }) => type === 'font' || type === 'js' || type === 'css'
  });
}
