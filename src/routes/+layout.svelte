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

{@render children()}

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
</style>
