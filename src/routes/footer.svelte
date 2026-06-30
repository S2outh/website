<script lang="ts">
  import logo from '$lib/assets/wuespace-logo.svg';
  import git from '$lib/assets/footer/git.svg';
  import instagram from '$lib/assets/footer/instagram.svg';
  import mastodon from '$lib/assets/footer/mastodon.svg';
  import bluesky from '$lib/assets/footer/bluesky.svg';
  import linkedin from '$lib/assets/footer/linkedin.svg';

  const external_links = [
    { src: git, alt: 'git', href: 'https://github.com/S2outh' },
    { src: instagram, alt: 'instagram', href: 'https://instagram.com/wuespace' },
    { src: mastodon, alt: 'mastodon', href: 'https://chaos.social/@wuespace' },
    { src: bluesky, alt: 'bluesky', href: 'https://bsky.app/profile/wuespace.bsky.social' },
    { src: linkedin, alt: 'linkedin', href: 'https://www.linkedin.com/company/wuespace' }
  ];
</script>

<div class="container">
  <hr style:height="0.1rem" />

  <div class="external-links">
    {#each external_links as { src, alt, href }}
      <a {href}>
        <img {src} {alt} style:width="3rem" />
      </a>
    {/each}
  </div>

  <hr style:width="80%" style:height="0.1rem" />

  <div class="logo-container">
    <a href="https://wuespace.de">
      <img src={logo} class="logo" alt="wuespace logo" />
    </a>
  </div>

  <hr style:height="0.1rem" />
</div>

<style>
  hr {
    border: none;
    height: 3px;
    background: var(--color-rule);
  }
  /* Footer links wrap images, so opt out of the global underline animation. */
  a {
    background-image: none;
  }
  .container {
    width: min(40rem, 90%);
    height: 100%;
    margin: 0 auto;
    padding: 4rem 0;
    text-align: center;
    justify-content: center;
  }
  .external-links {
    display: flex;
    gap: 3rem;
    justify-content: center;
  }
  .logo-container {
    overflow: clip;
  }
  .logo {
    width: min(20rem, 100%);
    transform: scale(1.4);
    transform-origin: center;
  }
</style>
