<script lang="ts">
  import logo from "$lib/assets/south-logo.svg";
	let { children } = $props();
</script>

<nav>
  <img src={logo} style:width=4rem alt="logo">
  <h2>S²OUTH</h2>
  <a href="/">Home</a>
  <a href="/supporters">Supporters</a>
  <a href="/south-cube">South-Cube</a>
  <a href="/north">N₂ORTH</a>
</nav>

<style>
  nav {
    height: 4%;
    padding: 0 4rem;
    display: flex;
    align-items: center;
  }
  a {
    color: white;
    text-decoration: none;
    background-image: linear-gradient(currentColor, currentColor);
    background-position: 0 100%;
    background-size: 0% 1px;
    background-repeat: no-repeat;
    transition: background-size 0.25s ease;
    margin-left: auto;
  }
  
  a:hover, a:focus-visible {
    background-size: 100% 1px;
  }
	@font-face {
		font-family: 'Roboto';
		src: url('/fonts/Roboto-Regular.woff2') format('truetype');
		font-weight: 400;
		font-style: normal;
		font-display: swap;
	}

	@font-face {
		font-family: 'Roboto';
		src: url('/fonts/Roboto-ExtraBold.woff2') format('truetype');
		font-weight: 700;
		font-style: normal;
		font-display: swap;
	}

	@font-face {
		font-family: 'Roboto';
		src: url('/fonts/Roboto-Italic.woff2') format('truetype');
		font-weight: 400;
		font-style: italic;
		font-display: swap;
	}

	@font-face {
		font-family: 'Roboto';
		src: url('/fonts/Roboto-ExtraBoldItalic.woff2') format('truetype');
		font-weight: 700;
		font-style: italic;
		font-display: swap;
	}

	@font-face {
		font-family: 'Chakra Petch';
		src: url('/fonts/ChakraPetch-SemiBold.woff2') format('truetype');
		font-weight: 600;
		font-style: normal;
		font-display: swap;
	}

	:global(p) {
		font-family: 'Roboto', sans-serif;
	}

	:global(h1),
	:global(h2),
	:global(h3),
	:global(h4),
	:global(h5),
	:global(h6) {
		font-family: 'Chakra Petch', sans-serif;
    font-size: 200%;
	}
</style>

{@render children()}
