<script lang="ts">
  import logo from '$lib/assets/south-logo.svg';
  let { children } = $props();
</script>

<nav>
  <a class="horizontal-flex" href="/">
    <img src={logo} class="logo" alt="south logo" />
    <h1>S²OUTH</h1>
  </a>
  <div class="horizontal-flex links">
    {@render children()}
  </div>
</nav>

<style>
  h1 {
    font-size: 200%;
  }
  nav {
    height: 4%;
    padding: 1rem 4rem;
    display: flex;
    align-items: center;
  }
  .horizontal-flex {
    gap: 2rem;
  }
  .logo {
    width: 4rem;
    margin: 0.2rem;
    transform: scale(1.8);
    transform-origin: center;
  }
  .links {
    margin-left: auto;
  }
</style>
