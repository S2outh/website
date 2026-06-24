<script lang="ts">
  import { MediaQuery } from "svelte/reactivity";
  import DesktopNavBar from "./desktop_nav_bar.svelte";
  import MobileNavBar from "./mobile_nav_bar.svelte";
  import SubpageLinks from "./subpage_links.svelte";
  import Footer from "./footer.svelte";
  
  const wide = new MediaQuery('min-aspect-ratio: 1/1');
  
  let { children } = $props();
</script>

{#if wide.current}
  <DesktopNavBar>
      <SubpageLinks />
  </DesktopNavBar>
{:else}
  <MobileNavBar>
      <SubpageLinks />
  </MobileNavBar>
{/if}

<div class="main">
  {@render children()}
</div>

<Footer />

<style>
  .main {
    padding: 1.5rem 0;
  }

  :global(html),
  :global(body) {
    /* Solid fallback */
    background-color: #0D2D59;
    /* Gradient as main bg */
    background-image: linear-gradient(to bottom right, #292929, #0D2D59);
    background-attachment: fixed;
    background-repeat: no-repeat;
  }
  @font-face {
    font-family: 'Roboto';
    src: url('/fonts/Roboto-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
    font-display: swap;
  }

  @font-face {
    font-family: 'Roboto';
    src: url('/fonts/Roboto-ExtraBold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
    font-display: swap;
  }

  @font-face {
    font-family: 'Roboto';
    src: url('/fonts/Roboto-Italic.woff2') format('woff2');
    font-weight: 400;
    font-style: italic;
    font-display: swap;
  }

  @font-face {
    font-family: 'Roboto';
    src: url('/fonts/Roboto-ExtraBoldItalic.woff2') format('woff2');
    font-weight: 700;
    font-style: italic;
    font-display: swap;
  }

  @font-face {
    font-family: 'Chakra Petch';
    src: url('/fonts/ChakraPetch-SemiBold.woff2') format('woff2');
    font-weight: 600;
    font-style: normal;
    font-display: swap;
  }

  :global(p) {
    font-size: 130%;
    color: white;
  }
  :global(p),
  :global(a) {
    font-family: 'Roboto', sans-serif;
  }

  :global(h1),
  :global(h2),
  :global(h3),
  :global(h4),
  :global(h5),
  :global(h6) {
    font-size: 160%;
    font-family: 'Chakra Petch', sans-serif;
    color: white;
  }
</style>
