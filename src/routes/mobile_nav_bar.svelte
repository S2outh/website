<script lang="ts">
  import { slide } from 'svelte/transition';
  import { reducedMotion } from '$lib/reducedMotion.svelte';
  import logo from '$lib/assets/south-logo.svg';
  let menu_active = $state(false);
  let { children } = $props();
</script>

<nav>
  <a class="horizontal-flex" href="/">
    <img src={logo} class="logo" alt="" />
    <h1>S²OUTH</h1>
  </a>
  <button
    class="menu-btn"
    aria-label="navigation-menu"
    aria-expanded={menu_active}
    type="button"
    onclick={() => {
      menu_active = !menu_active;
    }}
  >
    <svg width="3rem" height="3rem" viewBox="0 0 100 100">
      <rect class="btn btn-top" class:active={menu_active} x="5" y="0" />
      <rect class="btn btn-mid" class:active={menu_active} x="5" y="40" />
      <rect class="btn btn-btm" class:active={menu_active} x="5" y="80" />
    </svg>
  </button>
</nav>

{#if menu_active}
  <div transition:slide={{ duration: reducedMotion.current ? 0 : 400 }} class="vertical-flex">
    <br />
    {@render children()}
  </div>
{/if}

<style>
  h1 {
    font-size: 180%;
  }
  nav {
    height: 4%;
    padding: 1rem;
    display: flex;
    align-items: center;
  }
  .logo {
    width: 4rem;
    margin: 0.2rem;
    transform: scale(1.8);
    transform-origin: center;
  }
  .horizontal-flex {
    gap: 0.4rem;
  }
  .vertical-flex {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1.5rem;
  }
  .menu-btn {
    background: none;
    border: none;
    padding: 0;
    margin: 0;
    margin-left: auto;
  }
  .btn {
    fill: var(--color-icon);
    transform: rotate(0deg);
    transform-origin: left;
    transform-box: fill-box;
    width: 90%;
    height: 10%;
    rx: 5%;
  }
  .btn-top {
    transition:
      transform 0.25s ease,
      width 0.25s ease;
  }
  .btn-top.active {
    transform: rotate(45deg);
    width: 114%;
  }
  .btn-mid {
    transition: fill 0.25s ease;
  }
  .btn-mid.active {
    fill: transparent;
  }
  .btn-btm {
    transition:
      transform 0.25s ease,
      width 0.25s ease;
  }
  .btn-btm.active {
    transform: rotate(-45deg);
    width: 114%;
  }
</style>
