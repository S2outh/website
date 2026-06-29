<script lang="ts">
  import logo from '$lib/assets/wuespace-logo.svg';
  import git from '$lib/assets/footer/git.svg';
  import instagram from '$lib/assets/footer/instagram.svg';
</script>

<div class="container">
  <hr style:height="0.1rem" />

  <div class="external-links">
    <a href="https://github.com/S2outh">
      <img src={git} style:width="3rem" alt="git logo" />
    </a>
    <a href="https://instagram.com/wuespace">
      <img src={instagram} style:width="3rem" alt="instagram logo" />
    </a>
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
