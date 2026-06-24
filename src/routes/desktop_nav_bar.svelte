<script lang="ts">
  import logo from "$lib/assets/south-logo.svg";
  let { children } = $props();
</script>

<nav>
  <a class="horizontal-flex" href="/">
    <img src={logo} style:width=5rem style:margin=0.2rem alt="south logo">
    <h1>S²OUTH</h1>
  </a>
  <div class="horizontal-flex links">
    {@render children()}
  </div>
</nav>

<style>

  h1 {
    font-size: 180%;
  }
  nav {
    height: 4%;
    padding: 0 4rem;
    display: flex;
    align-items: center;
  }
  .horizontal-flex {
    display: flex;
    align-items: center;
    gap: 1.5rem;
  }
  .links {
    margin-left: auto;
  }
  a {
    color: white;
    text-decoration: none;
    background-image: linear-gradient(currentColor, currentColor);
    background-position: 0 100%;
    background-size: 0 0.1rem;
    background-repeat: no-repeat;
    transition: background-size 0.25s ease;
  }
  a:hover, a:focus-visible {
    background-size: 100% 0.1rem;
  }
</style>
