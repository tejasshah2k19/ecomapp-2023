<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include> 
 
<jsp:include page="AdminSideBar.jsp"></jsp:include>
 
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" style="min-height: 365px;"><div id="apexchartsdnko4njf" class="apexcharts-canvas apexchartsdnko4njf apexcharts-theme-light" style="width: 725px; height: 350px;"><svg id="SvgjsSvg3889" width="725" height="350" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><rect id="SvgjsRect3896" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG4015" class="apexcharts-yaxis" rel="0" transform="translate(15.635351181030273, 0)"><g id="SvgjsG4016" class="apexcharts-yaxis-texts-g"><text id="SvgjsText4018" font-family="Helvetica, Arial, sans-serif" x="20" y="31.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4019">100</tspan><title>100</title></text><text id="SvgjsText4021" font-family="Helvetica, Arial, sans-serif" x="20" y="85.63599990844726" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4022">80</tspan><title>80</title></text><text id="SvgjsText4024" font-family="Helvetica, Arial, sans-serif" x="20" y="139.77199981689452" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4025">60</tspan><title>60</title></text><text id="SvgjsText4027" font-family="Helvetica, Arial, sans-serif" x="20" y="193.90799972534177" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4028">40</tspan><title>40</title></text><text id="SvgjsText4030" font-family="Helvetica, Arial, sans-serif" x="20" y="248.04399963378904" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4031">20</tspan><title>20</title></text><text id="SvgjsText4033" font-family="Helvetica, Arial, sans-serif" x="20" y="302.1799995422363" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4034">0</tspan><title>0</title></text></g></g><g id="SvgjsG3891" class="apexcharts-inner apexcharts-graphical" transform="translate(45.63535118103027, 30)"><defs id="SvgjsDefs3890"><clipPath id="gridRectMaskdnko4njf"><rect id="SvgjsRect3901" width="675.3646488189697" height="272.6799995422363" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskdnko4njf"></clipPath><clipPath id="nonForecastMaskdnko4njf"></clipPath><clipPath id="gridRectMarkerMaskdnko4njf"><rect id="SvgjsRect3902" width="717.3646488189697" height="318.6799995422363" x="-24" y="-24" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient3920" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3921" stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop id="SvgjsStop3922" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop3923" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient3942" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3943" stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop id="SvgjsStop3944" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop3945" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient3964" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3965" stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop id="SvgjsStop3966" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop3967" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine3897" x1="0" y1="0" x2="0" y2="270.6799995422363" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="270.6799995422363" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line id="SvgjsLine3974" x1="0" y1="271.6799995422363" x2="0" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3975" x1="102.97917674137996" y1="271.6799995422363" x2="102.97917674137996" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3976" x1="205.95835348275992" y1="271.6799995422363" x2="205.95835348275992" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3977" x1="308.9375302241399" y1="271.6799995422363" x2="308.9375302241399" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3978" x1="411.91670696551984" y1="271.6799995422363" x2="411.91670696551984" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3979" x1="514.8958837068998" y1="271.6799995422363" x2="514.8958837068998" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine3980" x1="617.8750604482798" y1="271.6799995422363" x2="617.8750604482798" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g id="SvgjsG3970" class="apexcharts-grid"><g id="SvgjsG3971" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine3982" x1="0" y1="54.13599990844726" x2="669.3646488189697" y2="54.13599990844726" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3983" x1="0" y1="108.27199981689452" x2="669.3646488189697" y2="108.27199981689452" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3984" x1="0" y1="162.40799972534177" x2="669.3646488189697" y2="162.40799972534177" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3985" x1="0" y1="216.54399963378904" x2="669.3646488189697" y2="216.54399963378904" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG3972" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine3988" x1="0" y1="270.6799995422363" x2="669.3646488189697" y2="270.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine3987" x1="0" y1="1" x2="0" y2="270.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG3973" class="apexcharts-grid-borders"><line id="SvgjsLine3981" x1="0" y1="0" x2="669.3646488189697" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3986" x1="0" y1="270.6799995422363" x2="669.3646488189697" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine4014" x1="0" y1="271.6799995422363" x2="669.3646488189697" y2="271.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g id="SvgjsG3903" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG3904" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3924" d="M 0 270.6799995422363 L 0 186.76919968414308C 54.06406778922448 186.76919968414308 100.40469732284546 162.40799972534177 154.46876511206995 162.40799972534177C 190.51147697155292 162.40799972534177 221.4052299939669 194.88959967041015 257.4479418534499 194.88959967041015C 293.49065371293284 194.88959967041015 324.38440673534683 132.6331997756958 360.42711859482984 132.6331997756958C 396.46983045431284 132.6331997756958 427.36358347672683 156.99439973449705 463.4062953362098 156.99439973449705C 499.44900719569273 156.99439973449705 530.3427602181067 48.72239991760253 566.3854720775897 48.72239991760253C 602.4281839370727 48.72239991760253 633.3219369594867 119.09919979858398 669.3646488189697 119.09919979858398C 669.3646488189697 119.09919979858398 669.3646488189697 119.09919979858398 669.3646488189697 270.6799995422363M 669.3646488189697 119.09919979858398z" fill="url(#SvgjsLinearGradient3920)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 270.6799995422363 L 0 186.76919968414308C 54.06406778922448 186.76919968414308 100.40469732284546 162.40799972534177 154.46876511206995 162.40799972534177C 190.51147697155292 162.40799972534177 221.4052299939669 194.88959967041015 257.4479418534499 194.88959967041015C 293.49065371293284 194.88959967041015 324.38440673534683 132.6331997756958 360.42711859482984 132.6331997756958C 396.46983045431284 132.6331997756958 427.36358347672683 156.99439973449705 463.4062953362098 156.99439973449705C 499.44900719569273 156.99439973449705 530.3427602181067 48.72239991760253 566.3854720775897 48.72239991760253C 602.4281839370727 48.72239991760253 633.3219369594867 119.09919979858398 669.3646488189697 119.09919979858398C 669.3646488189697 119.09919979858398 669.3646488189697 119.09919979858398 669.3646488189697 270.6799995422363M 669.3646488189697 119.09919979858398z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363"></path><path id="SvgjsPath3925" d="M 0 186.76919968414308C 54.06406778922448 186.76919968414308 100.40469732284546 162.40799972534177 154.46876511206995 162.40799972534177C 190.51147697155292 162.40799972534177 221.4052299939669 194.88959967041015 257.4479418534499 194.88959967041015C 293.49065371293284 194.88959967041015 324.38440673534683 132.6331997756958 360.42711859482984 132.6331997756958C 396.46983045431284 132.6331997756958 427.36358347672683 156.99439973449705 463.4062953362098 156.99439973449705C 499.44900719569273 156.99439973449705 530.3427602181067 48.72239991760253 566.3854720775897 48.72239991760253C 602.4281839370727 48.72239991760253 633.3219369594867 119.09919979858398 669.3646488189697 119.09919979858398" fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 186.76919968414308C 54.06406778922448 186.76919968414308 100.40469732284546 162.40799972534177 154.46876511206995 162.40799972534177C 190.51147697155292 162.40799972534177 221.4052299939669 194.88959967041015 257.4479418534499 194.88959967041015C 293.49065371293284 194.88959967041015 324.38440673534683 132.6331997756958 360.42711859482984 132.6331997756958C 396.46983045431284 132.6331997756958 427.36358347672683 156.99439973449705 463.4062953362098 156.99439973449705C 499.44900719569273 156.99439973449705 530.3427602181067 48.72239991760253 566.3854720775897 48.72239991760253C 602.4281839370727 48.72239991760253 633.3219369594867 119.09919979858398 669.3646488189697 119.09919979858398" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG3905" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG3907" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3908" r="4" cx="0" cy="186.76919968414308" class="apexcharts-marker no-pointer-events wouqktzzf" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="4"></circle><circle id="SvgjsCircle3909" r="4" cx="154.46876511206995" cy="162.40799972534177" class="apexcharts-marker no-pointer-events wg4fk5cv8" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="4"></circle></g><g id="SvgjsG3910" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3911" r="4" cx="257.4479418534499" cy="194.88959967041015" class="apexcharts-marker no-pointer-events wojbz1ejh" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="4"></circle></g><g id="SvgjsG3912" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3913" r="4" cx="360.42711859482984" cy="132.6331997756958" class="apexcharts-marker no-pointer-events wwepvcfk1" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="4"></circle></g><g id="SvgjsG3914" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3915" r="4" cx="463.4062953362098" cy="156.99439973449705" class="apexcharts-marker no-pointer-events wjc5gd18m" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="4"></circle></g><g id="SvgjsG3916" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3917" r="4" cx="566.3854720775897" cy="48.72239991760253" class="apexcharts-marker no-pointer-events wz0kq36al" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="4"></circle></g><g id="SvgjsG3918" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3919" r="4" cx="669.3646488189697" cy="119.09919979858398" class="apexcharts-marker no-pointer-events w0w6z1d6p" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="4"></circle></g></g></g><g id="SvgjsG3926" class="apexcharts-series" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path id="SvgjsPath3946" d="M 0 270.6799995422363 L 0 240.90519959259032C 54.06406778922448 240.90519959259032 100.40469732284546 184.0623996887207 154.46876511206995 184.0623996887207C 190.51147697155292 184.0623996887207 221.4052299939669 148.87399974822998 257.4479418534499 148.87399974822998C 293.49065371293284 148.87399974822998 324.38440673534683 184.0623996887207 360.42711859482984 184.0623996887207C 396.46983045431284 184.0623996887207 427.36358347672683 178.64879969787597 463.4062953362098 178.64879969787597C 499.44900719569273 178.64879969787597 530.3427602181067 129.92639978027344 566.3854720775897 129.92639978027344C 602.4281839370727 129.92639978027344 633.3219369594867 159.70119972991944 669.3646488189697 159.70119972991944C 669.3646488189697 159.70119972991944 669.3646488189697 159.70119972991944 669.3646488189697 270.6799995422363M 669.3646488189697 159.70119972991944z" fill="url(#SvgjsLinearGradient3942)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 270.6799995422363 L 0 240.90519959259032C 54.06406778922448 240.90519959259032 100.40469732284546 184.0623996887207 154.46876511206995 184.0623996887207C 190.51147697155292 184.0623996887207 221.4052299939669 148.87399974822998 257.4479418534499 148.87399974822998C 293.49065371293284 148.87399974822998 324.38440673534683 184.0623996887207 360.42711859482984 184.0623996887207C 396.46983045431284 184.0623996887207 427.36358347672683 178.64879969787597 463.4062953362098 178.64879969787597C 499.44900719569273 178.64879969787597 530.3427602181067 129.92639978027344 566.3854720775897 129.92639978027344C 602.4281839370727 129.92639978027344 633.3219369594867 159.70119972991944 669.3646488189697 159.70119972991944C 669.3646488189697 159.70119972991944 669.3646488189697 159.70119972991944 669.3646488189697 270.6799995422363M 669.3646488189697 159.70119972991944z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363"></path><path id="SvgjsPath3947" d="M 0 240.90519959259032C 54.06406778922448 240.90519959259032 100.40469732284546 184.0623996887207 154.46876511206995 184.0623996887207C 190.51147697155292 184.0623996887207 221.4052299939669 148.87399974822998 257.4479418534499 148.87399974822998C 293.49065371293284 148.87399974822998 324.38440673534683 184.0623996887207 360.42711859482984 184.0623996887207C 396.46983045431284 184.0623996887207 427.36358347672683 178.64879969787597 463.4062953362098 178.64879969787597C 499.44900719569273 178.64879969787597 530.3427602181067 129.92639978027344 566.3854720775897 129.92639978027344C 602.4281839370727 129.92639978027344 633.3219369594867 159.70119972991944 669.3646488189697 159.70119972991944" fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 240.90519959259032C 54.06406778922448 240.90519959259032 100.40469732284546 184.0623996887207 154.46876511206995 184.0623996887207C 190.51147697155292 184.0623996887207 221.4052299939669 148.87399974822998 257.4479418534499 148.87399974822998C 293.49065371293284 148.87399974822998 324.38440673534683 184.0623996887207 360.42711859482984 184.0623996887207C 396.46983045431284 184.0623996887207 427.36358347672683 178.64879969787597 463.4062953362098 178.64879969787597C 499.44900719569273 178.64879969787597 530.3427602181067 129.92639978027344 566.3854720775897 129.92639978027344C 602.4281839370727 129.92639978027344 633.3219369594867 159.70119972991944 669.3646488189697 159.70119972991944" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG3927" class="apexcharts-series-markers-wrap" data:realIndex="1"><g id="SvgjsG3929" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3930" r="4" cx="0" cy="240.90519959259032" class="apexcharts-marker no-pointer-events wul7fkdya" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="1" default-marker-size="4"></circle><circle id="SvgjsCircle3931" r="4" cx="154.46876511206995" cy="184.0623996887207" class="apexcharts-marker no-pointer-events wlqmck6wl" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="1" default-marker-size="4"></circle></g><g id="SvgjsG3932" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3933" r="4" cx="257.4479418534499" cy="148.87399974822998" class="apexcharts-marker no-pointer-events wd7js8tpif" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="1" default-marker-size="4"></circle></g><g id="SvgjsG3934" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3935" r="4" cx="360.42711859482984" cy="184.0623996887207" class="apexcharts-marker no-pointer-events w0fj7hlpp" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="1" default-marker-size="4"></circle></g><g id="SvgjsG3936" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3937" r="4" cx="463.4062953362098" cy="178.64879969787597" class="apexcharts-marker no-pointer-events wqhrxws0zf" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="1" default-marker-size="4"></circle></g><g id="SvgjsG3938" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3939" r="4" cx="566.3854720775897" cy="129.92639978027344" class="apexcharts-marker no-pointer-events wjuzpzryo" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="1" default-marker-size="4"></circle></g><g id="SvgjsG3940" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3941" r="4" cx="669.3646488189697" cy="159.70119972991944" class="apexcharts-marker no-pointer-events w50yye508" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="1" default-marker-size="4"></circle></g></g></g><g id="SvgjsG3948" class="apexcharts-series" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path id="SvgjsPath3968" d="M 0 270.6799995422363 L 0 230.07799961090086C 54.06406778922448 230.07799961090086 100.40469732284546 240.90519959259032 154.46876511206995 240.90519959259032C 190.51147697155292 240.90519959259032 221.4052299939669 184.0623996887207 257.4479418534499 184.0623996887207C 293.49065371293284 184.0623996887207 324.38440673534683 221.9575996246338 360.42711859482984 221.9575996246338C 396.46983045431284 221.9575996246338 427.36358347672683 246.31879958343504 463.4062953362098 246.31879958343504C 499.44900719569273 246.31879958343504 530.3427602181067 205.7167996520996 566.3854720775897 205.7167996520996C 602.4281839370727 205.7167996520996 633.3219369594867 240.90519959259032 669.3646488189697 240.90519959259032C 669.3646488189697 240.90519959259032 669.3646488189697 240.90519959259032 669.3646488189697 270.6799995422363M 669.3646488189697 240.90519959259032z" fill="url(#SvgjsLinearGradient3964)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 270.6799995422363 L 0 230.07799961090086C 54.06406778922448 230.07799961090086 100.40469732284546 240.90519959259032 154.46876511206995 240.90519959259032C 190.51147697155292 240.90519959259032 221.4052299939669 184.0623996887207 257.4479418534499 184.0623996887207C 293.49065371293284 184.0623996887207 324.38440673534683 221.9575996246338 360.42711859482984 221.9575996246338C 396.46983045431284 221.9575996246338 427.36358347672683 246.31879958343504 463.4062953362098 246.31879958343504C 499.44900719569273 246.31879958343504 530.3427602181067 205.7167996520996 566.3854720775897 205.7167996520996C 602.4281839370727 205.7167996520996 633.3219369594867 240.90519959259032 669.3646488189697 240.90519959259032C 669.3646488189697 240.90519959259032 669.3646488189697 240.90519959259032 669.3646488189697 270.6799995422363M 669.3646488189697 240.90519959259032z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363"></path><path id="SvgjsPath3969" d="M 0 230.07799961090086C 54.06406778922448 230.07799961090086 100.40469732284546 240.90519959259032 154.46876511206995 240.90519959259032C 190.51147697155292 240.90519959259032 221.4052299939669 184.0623996887207 257.4479418534499 184.0623996887207C 293.49065371293284 184.0623996887207 324.38440673534683 221.9575996246338 360.42711859482984 221.9575996246338C 396.46983045431284 221.9575996246338 427.36358347672683 246.31879958343504 463.4062953362098 246.31879958343504C 499.44900719569273 246.31879958343504 530.3427602181067 205.7167996520996 566.3854720775897 205.7167996520996C 602.4281839370727 205.7167996520996 633.3219369594867 240.90519959259032 669.3646488189697 240.90519959259032" fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskdnko4njf)" pathTo="M 0 230.07799961090086C 54.06406778922448 230.07799961090086 100.40469732284546 240.90519959259032 154.46876511206995 240.90519959259032C 190.51147697155292 240.90519959259032 221.4052299939669 184.0623996887207 257.4479418534499 184.0623996887207C 293.49065371293284 184.0623996887207 324.38440673534683 221.9575996246338 360.42711859482984 221.9575996246338C 396.46983045431284 221.9575996246338 427.36358347672683 246.31879958343504 463.4062953362098 246.31879958343504C 499.44900719569273 246.31879958343504 530.3427602181067 205.7167996520996 566.3854720775897 205.7167996520996C 602.4281839370727 205.7167996520996 633.3219369594867 240.90519959259032 669.3646488189697 240.90519959259032" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 154.46876511206995 270.6799995422363 L 257.4479418534499 270.6799995422363 L 360.42711859482984 270.6799995422363 L 463.4062953362098 270.6799995422363 L 566.3854720775897 270.6799995422363 L 669.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG3949" class="apexcharts-series-markers-wrap" data:realIndex="2"><g id="SvgjsG3951" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3952" r="4" cx="0" cy="230.07799961090086" class="apexcharts-marker no-pointer-events w1buq8a2hl" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="2" default-marker-size="4"></circle><circle id="SvgjsCircle3953" r="4" cx="154.46876511206995" cy="240.90519959259032" class="apexcharts-marker no-pointer-events wqrecghmy" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="2" default-marker-size="4"></circle></g><g id="SvgjsG3954" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3955" r="4" cx="257.4479418534499" cy="184.0623996887207" class="apexcharts-marker no-pointer-events wn10pqqfn" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="2" default-marker-size="4"></circle></g><g id="SvgjsG3956" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3957" r="4" cx="360.42711859482984" cy="221.9575996246338" class="apexcharts-marker no-pointer-events w5rr4mydk" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="2" default-marker-size="4"></circle></g><g id="SvgjsG3958" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3959" r="4" cx="463.4062953362098" cy="246.31879958343504" class="apexcharts-marker no-pointer-events w0fnyfplu" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="2" default-marker-size="4"></circle></g><g id="SvgjsG3960" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3961" r="4" cx="566.3854720775897" cy="205.7167996520996" class="apexcharts-marker no-pointer-events wa7vsgs3g" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="2" default-marker-size="4"></circle></g><g id="SvgjsG3962" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskdnko4njf)"><circle id="SvgjsCircle3963" r="4" cx="669.3646488189697" cy="240.90519959259032" class="apexcharts-marker no-pointer-events w6hlbcdgii" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="2" default-marker-size="4"></circle></g></g></g><g id="SvgjsG3906" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG3928" class="apexcharts-datalabels" data:realIndex="1"></g><g id="SvgjsG3950" class="apexcharts-datalabels" data:realIndex="2"></g></g><line id="SvgjsLine3989" x1="0" y1="0" x2="669.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3990" x1="0" y1="0" x2="669.3646488189697" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3991" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3992" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText3994" font-family="Helvetica, Arial, sans-serif" x="0" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan3995">00:00</tspan><title>00:00</title></text><text id="SvgjsText3997" font-family="Helvetica, Arial, sans-serif" x="102.97917674137996" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan3998">01:00</tspan><title>01:00</title></text><text id="SvgjsText4000" font-family="Helvetica, Arial, sans-serif" x="205.95835348275992" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4001">02:00</tspan><title>02:00</title></text><text id="SvgjsText4003" font-family="Helvetica, Arial, sans-serif" x="308.9375302241399" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4004">03:00</tspan><title>03:00</title></text><text id="SvgjsText4006" font-family="Helvetica, Arial, sans-serif" x="411.91670696551984" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4007">04:00</tspan><title>04:00</title></text><text id="SvgjsText4009" font-family="Helvetica, Arial, sans-serif" x="514.8958837068998" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4010">05:00</tspan><title>05:00</title></text><text id="SvgjsText4012" font-family="Helvetica, Arial, sans-serif" x="617.8750604482798" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan4013">06:00</tspan><title>06:00</title></text></g></g><g id="SvgjsG4035" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG4036" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG4037" class="apexcharts-point-annotations"></g><rect id="SvgjsRect4038" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect4039" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><g id="SvgjsG3892" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" style="inset: auto 0px 1px; position: absolute; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(65, 84, 241) !important; color: rgb(65, 84, 241); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(46, 202, 106) !important; color: rgb(46, 202, 106); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="background: rgb(255, 119, 29) !important; color: rgb(255, 119, 29); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span></div></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Recent Sales <span>| Today</span></h5>

                  <div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns"><div class="datatable-top">
    <div class="datatable-dropdown">
            <label>
                <select class="datatable-selector"><option value="5">5</option><option value="10" selected="">10</option><option value="15">15</option><option value="20">20</option><option value="25">25</option></select> entries per page
            </label>
        </div>
    <div class="datatable-search">
            <input class="datatable-input" placeholder="Search..." type="search" title="Search within table">
        </div>
</div>
<div class="datatable-container"><table class="table table-borderless datatable datatable-table"><thead><tr><th data-sortable="true" style="width: 10.911602209944752%;"><a href="#" class="datatable-sorter">#</a></th><th data-sortable="true" style="width: 24.03314917127072%;"><a href="#" class="datatable-sorter">Customer</a></th><th data-sortable="true" style="width: 40.193370165745854%;"><a href="#" class="datatable-sorter">Product</a></th><th data-sortable="true" style="width: 9.806629834254144%;"><a href="#" class="datatable-sorter">Price</a></th><th data-sortable="true" style="width: 15.05524861878453%;"><a href="#" class="datatable-sorter">Status</a></th></tr></thead><tbody><tr data-index="0"><td><a href="#">#2457</a></td><td>Brandon Jacob</td><td><a href="#" class="text-primary">At praesentium minu</a></td><td>$64</td><td><span class="badge bg-success">Approved</span></td></tr><tr data-index="1"><td><a href="#">#2147</a></td><td>Bridie Kessler</td><td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td><td>$47</td><td><span class="badge bg-warning">Pending</span></td></tr><tr data-index="2"><td><a href="#">#2049</a></td><td>Ashleigh Langosh</td><td><a href="#" class="text-primary">At recusandae consectetur</a></td><td>$147</td><td><span class="badge bg-success">Approved</span></td></tr><tr data-index="3"><td><a href="#">#2644</a></td><td>Angus Grady</td><td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td><td>$67</td><td><span class="badge bg-danger">Rejected</span></td></tr><tr data-index="4"><td><a href="#">#2644</a></td><td>Raheem Lehner</td><td><a href="#" class="text-primary">Sunt similique distinctio</a></td><td>$165</td><td><span class="badge bg-success">Approved</span></td></tr></tbody></table></div>
<div class="datatable-bottom">
    <div class="datatable-info">Showing 1 to 5 of 5 entries</div>
    <nav class="datatable-pagination"><ul class="datatable-pagination-list"></ul></nav>
</div></div>

                </div>

              </div>
            </div><!-- End Recent Sales -->

            <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body pb-0">
                  <h5 class="card-title">Top Selling <span>| Today</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">Preview</th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Sold</th>
                        <th scope="col">Revenue</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/product-1.jpg" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold">Ut inventore ipsa voluptas nulla</a></td>
                        <td>$64</td>
                        <td class="fw-bold">124</td>
                        <td>$5,828</td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/product-2.jpg" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold">Exercitationem similique doloremque</a></td>
                        <td>$46</td>
                        <td class="fw-bold">98</td>
                        <td>$4,508</td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/product-3.jpg" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold">Doloribus nisi exercitationem</a></td>
                        <td>$59</td>
                        <td class="fw-bold">74</td>
                        <td>$4,366</td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/product-4.jpg" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold">Officiis quaerat sint rerum error</a></td>
                        <td>$32</td>
                        <td class="fw-bold">63</td>
                        <td>$2,016</td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/product-5.jpg" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold">Sit unde debitis delectus repellendus</a></td>
                        <td>$79</td>
                        <td class="fw-bold">41</td>
                        <td>$3,239</td>
                      </tr>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <!-- End Right side columns -->

      </div>
    </section>

  </main>
  
  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  <jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>