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
  <a href="https://wuespace.de">
    <img src={logo} style:width="20rem" alt="wuespace logo" />
  </a>

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
    width: min(30rem, 90%);
    height: 100%;
    margin: 3rem auto;
    text-align: center;
    justify-content: center;
  }
  .external-links {
    display: flex;
    gap: 3rem;
    justify-content: center;
  }
</style>
