<svelte:head>
  <title>S²OUTH — Student's Sub-Orbital Unified Telemetry Handler</title>
  <meta
    name="description"
    content="S²OUTH is a modern, reliable telemetry system delivering live sensor data, high-precision pose estimation, and an HD video downlink for the full duration of a suborbital spaceshot flight."
  />
</svelte:head>

<div class="title-div">
  <enhanced:img
    class="bg-title"
    src="$lib/assets/pictures/home/AssemblyCAD.png"
    alt=""
    fetchpriority="high"
  />
  <div class="text-title-div">
    <h1 class="title">S²OUTH</h1>

    <p class="subtitle">
      <b>S</b>tudent’s <b>S</b>ub-<b>O</b>rbital
      <b>U</b>nified <b>T</b>elemetry <b>H</b>andler
    </p>
  </div>
</div>

<div class="content-div">
  <h2>Abstract</h2>

  <p>
    <i>S²OUTH</i> is a project developing a modern and reliable telemetry system. The goal of the system
    is to provide live telemetry including sensor data, and high precision pose estimation for the entire
    duration of a suborbital spaceshot flight. Furthermore the project includes a secondary high bandwidth
    RF link to stream high fidelity video of the rocket during the flight.
  </p>

  <p>
    The project was originally conceived in collaboration with the student team from
    <i>HyEnD Stuttgart</i> for usage in their <i>N₂ORTH</i> hybrid propellant rocket. Since then a
    preliminary version of the project named
    <a href="/south-cube">South Cube</a> has flown as payload on the <i>Ispida</i> rocket build by
    <i>Aerospace Team Graz (ASTG)</i> and further options for collaborations with student teams are being
    explored.
  </p>

  <p>
    The <i>N₂ORTH</i> rocket is currently scheduled to fly in early to mid 2027. More details can be
    found on the <a href="/north">N₂ORTH</a> page.
  </p>

  <enhanced:img
    loading="lazy"
    src="$lib/assets/pictures/home/FullAssembly.jpg"
    class="image"
    alt="integrated assembly"
  />

  <h2>Capabilities</h2>

  <p>
    The <i>S²OUTH</i> project is designed to provide the following capabilities:
  </p>

  <h3>Distributed system</h3>

  <p>
    The onboard system is made up of nine distinct boards connected via a two redundant CAN busses
    to ensure that no single component failure causes the entire system to fail.
  </p>

  <h3>Sensor board</h3>

  <p>
    The system contains two redundant sensor boards each containing two IMUs, a magnetometer, a
    barometer and a connection to the <i>DLR Phoenix</i> GPS receiver. Each sensor board also contains
    a MCU for pose estimation.
  </p>

  <enhanced:img
    loading="lazy"
    src="$lib/assets/pictures/home/UpperSensor.jpg"
    class="image"
    alt="Upper sensor boards"
  />

  <h3>Telemetry downlink</h3>

  <p>
    Built on top of the OpenLST project, our 437Mhz based telemetry downlink guarantees a stable
    connection throughout the entire flight.
  </p>

  <enhanced:img
    loading="lazy"
    src="$lib/assets/pictures/home/RocketLST.png"
    class="image"
    alt="RocketLST"
  />

  <h3>Power supply</h3>

  <p>
    The power supply connects to two 5s LiIon batteries (main and backup) and distributes the power
    to all different systems using isolated power rails. The power supply board constantly monitors
    current, voltage, and temperature of the two batteries and is able to quickly switch to the
    backup if measurements exceed specifications.
  </p>

  <enhanced:img loading="lazy" src="$lib/assets/pictures/home/EPS.png" class="image" alt="EPS" />

  <h3>RocketHD</h3>

  <p>
    Build on top of the <i>OpenIPC</i> and <i>wifibroadcast</i> project,
    <i>RocketHD</i> aims to provide a high bandwith link for video and backup telemetry
    transmission. Using our custom <i>wifibroadcast</i> software as well as four amplifiers and patch
    antennas we hope to receive high definition video live from space.
  </p>

  <enhanced:img
    loading="lazy"
    src="$lib/assets/pictures/home/RocketHD.png"
    class="image"
    alt="RocketHD"
  />

  <h3>Groundstation</h3>

  <p>
    To enable continuous receiving of data a custom build antenna tracker is used. As part of the <i
      >RocketHD</i
    > project we aim to point a 5.8GHz dish antenna with 0.5 degrees of precision.
  </p>

  <br />
  <div style:text-align="center">
    <a href="/documents/south-documentation.pdf"> Read the documentation to learn more </a>
  </div>
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
    width: min(110rem, 100%);
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
  .content-div {
    display: flex;
    flex-direction: column;
    gap: 0.2rem;
  }
  .title {
    font-size: 440%;
  }
  .subtitle {
    font-size: 200%;
  }
  /* .image base (width/height) is in app.css */
  .image {
    object-fit: cover;
    aspect-ratio: 1/1;
  }
</style>
