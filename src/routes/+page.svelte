<svelte:head>
  <title>S²OUTH - Student's Sub-Orbital Unified Telemetry Handler</title>
  <meta
    name="description"
    content="S²OUTH is a modern, reliable telemetry system delivering live sensor data, high-precision pose estimation, and an HD video downlink for the full duration of a suborbital spaceshot flight."
  />
</svelte:head>

<div class="title-div">
  <enhanced:img
    class="bg-title"
    src="#lib/assets/pictures/home/AssemblyCAD.png"
    alt="CAD render of the S²OUTH avionics stack mounted inside the rocket's nose cone"
    fetchpriority="high"
  />
  <div class="text-title-div">
    <h1 class="title"><mark>&lbrace;</mark> S²OUTH <mark>&rbrace;</mark></h1>

    <p class="subtitle">
      <b>S</b>tudent’s <b>S</b>ub-<b>O</b>rbital
      <b>U</b>nified <b>T</b>elemetry <b>H</b>andler
    </p>
  </div>
</div>

<div class="content-div">
  <h2><mark>></mark> Abstract</h2>

  <p>
    <em>S²OUTH</em> is a project developing a modern and reliable telemetry system. The goal of the system
    is to provide live telemetry including sensor data, and high precision pose estimation for the entire
    duration of a suborbital spaceshot flight. Furthermore the project includes a secondary high bandwidth
    RF link to stream high fidelity video of the rocket during the flight.
  </p>

  <p>
    The project was originally conceived in collaboration with the student team from
    <em>HyEnD Stuttgart</em> for usage in their <em>N₂ORTH</em> hybrid propellant rocket. Since then
    a preliminary version of the project named
    <a href="/south-cube">South Cube</a> has flown as payload on the <em>Ispida</em> rocket build by
    <em>Aerospace Team Graz (ASTG)</em> and further options for collaborations with student teams are
    being explored.
  </p>

  <p>
    The <em>N₂ORTH</em> rocket is currently scheduled to fly in early to mid 2027. More details can
    be found on the <a href="/north">N₂ORTH</a> page.
  </p>

  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/home/FullAssembly.jpg"
    class="image"
    style:aspect-ratio="1/1"
    alt="The fully integrated S²OUTH telemetry stack assembled on its support frame during outdoor testing"
  />

  <h2><mark>></mark> Capabilities</h2>

  <p>
    The <em>S²OUTH</em> project is designed to provide the following capabilities:
  </p>

  <h3><mark>></mark> Distributed system</h3>

  <p>
    The onboard system is made up of nine distinct boards connected via a two redundant CAN busses
    to ensure that no single component failure causes the entire system to fail.
  </p>

  <h3><mark>></mark> Sensor board</h3>

  <p>
    The system contains two redundant sensor boards each containing two IMUs, a magnetometer, a
    barometer and a connection to the <em>DLR Phoenix</em> GPS receiver. Each sensor board also contains
    a MCU for pose estimation.
  </p>

  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/home/UpperSensor.jpg"
    class="image"
    alt="Close-up of the stacked redundant sensor boards, each carrying two IMUs, a magnetometer and a barometer"
  />

  <h3><mark>></mark> Telemetry downlink</h3>

  <p>
    Built on top of the OpenLST project, our 437Mhz based telemetry downlink guarantees a stable
    connection throughout the entire flight.
  </p>

  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/home/RocketLST.png"
    class="image"
    alt="PCB layout of the RocketLST 437 MHz telemetry downlink board, measuring 80 by 80 millimetres"
  />

  <h3><mark>></mark> Power supply</h3>

  <p>
    The power supply connects to two 5s LiIon batteries (main and backup) and distributes the power
    to all different systems using isolated power rails. The power supply board constantly monitors
    current, voltage, and temperature of the two batteries and is able to quickly switch to the
    backup if measurements exceed specifications.
  </p>

  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/home/EPS.png"
    class="image"
    alt="3D render of the EPS power supply board that distributes power across isolated rails"
  />

  <h3><mark>></mark> RocketHD</h3>

  <p>
    Build on top of the <em>OpenIPC</em> and <em>wifibroadcast</em> project,
    <em>RocketHD</em> aims to provide a high bandwith link for video and backup telemetry
    transmission. Using our custom <em>wifibroadcast</em> software as well as four amplifiers and patch
    antennas we hope to receive high definition video live from space.
  </p>

  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/home/RocketHD.png"
    class="image"
    alt="3D render of the RocketHD board with its RF connectors for the high-bandwidth video downlink"
  />

  <h3><mark>></mark> Groundstation</h3>

  <p>
    To enable continuous receiving of data a custom build antenna tracker is used. As part of the <em
      >RocketHD</em
    > project we aim to point a 5.8GHz dish antenna with 0.5 degrees of precision.
  </p>

  <br />
  <p style:text-align="center">
    <a href="/documents/south-documentation.pdf"> Read the documentation to learn more </a>
  </p>
</div>

<style>
  .title-div {
    position: relative;
    display: grid;
    width: 100%;
    height: 25rem;
    margin: auto;
    overflow: hidden;
  }
  .bg-title {
    position: absolute;
    inset: 0;
    margin-inline: auto;
    width: min(130rem, 100%);
    height: 100%;
    object-fit: cover;
    object-position: center;
    filter: contrast(0.5) brightness(0.9);

    z-index: 0;
  }
  .text-title-div {
    width: min(50rem, 90%);
    text-align: center;
    justify-content: center;
    margin: auto;

    z-index: 1;
    grid-area: 1/1;
  }

  /* .content-div base (width/height/margin/justify + accent links) is in app.css */
  .title {
    font-size: 440%;
  }
  .subtitle {
    font-size: 200%;
  }
  /* .image base (width/height) is in app.css */
  .image {
    object-fit: cover;
    aspect-ratio: 1.5/1;
  }
</style>
