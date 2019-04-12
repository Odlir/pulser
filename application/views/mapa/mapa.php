<style>
	#map {
		height: 600px;
		width: 100%;
	}
</style>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9gSxKPfz96DqeDGSPNS-qQqtRTJBA4XM&callback=initMap"></script>
<script>
    function initMap() {
        var location = {lat: -12.041679, lng: -76.936227};

        var map = new google.maps.Map(
            document.getElementById('map'), {zoom: 14, center: location, scrollwheel: false});

        var marker = new google.maps.Marker({position: location, map: map});
    }
</script>
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			<i class="fa fa-th" aria-hidden="true"></i> Mapa
			<small>Pulser</small>
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="estacion" class="col-sm-1 control-label pull-left">Estacion:</label>
						<div class="col-sm-2">
							<select class="form-control" id="estacion">
								<option>Nombre de Estacines</option>
								<option>Chorrillos</option>
								<option>San Borja</option>
								<option>Ate</option>
								<option>Santa Anita</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="Estado" class="col-sm-1 control-label pull-left">Estado:</label>
						<div class="col-sm-2">
							<select class="form-control" id="Estado">
								<option>En Proceso</option>
								<option>Terminado</option>
								<option>Pendiente</option>
							</select>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary">Buscar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div id="map"></div>
			</div>
		</div>
	</section>
</div>

