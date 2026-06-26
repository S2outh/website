<script lang="ts">
  import '../app.css';
  import DesktopNavBar from './desktop_nav_bar.svelte';
  import MobileNavBar from './mobile_nav_bar.svelte';
  import SubpageLinks from './subpage_links.svelte';
  import Footer from './footer.svelte';

  let { children } = $props();
</script>

<div class="desktop-nav">
  <DesktopNavBar>
    <SubpageLinks />
  </DesktopNavBar>
</div>

<div class="mobile-nav">
  <MobileNavBar>
    <SubpageLinks />
  </MobileNavBar>
</div>

<div class="main">
  {@render children()}
</div>

<Footer />

<style>
  .desktop-nav {
    display: block;
  }
  .mobile-nav {
    display: none;
  }
  @media (max-width: 865px) {
    .desktop-nav {
      display: none;
    }
    .mobile-nav {
      display: block;
    }
  }
  /* Base styles, design tokens and shared utilities live in src/app.css. */
  .main {
    padding: 1.5rem 0;
  }
</style>
