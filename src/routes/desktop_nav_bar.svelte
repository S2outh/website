<script lang="ts">
  import logo from '$lib/assets/south-logo.svg';
  let { children } = $props();
</script>

<nav>
  <a class="horizontal-flex" href="/">
    <img src={logo} style:width="5rem" style:margin="0.2rem" alt="south logo" />
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
    padding: 0 4rem;
    display: flex;
    align-items: center;
  }
  .links {
    margin-left: auto;
  }
</style>
