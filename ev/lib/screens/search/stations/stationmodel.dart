<<<<<<< master
=======
// this is the data model class for electric station
// we will fetch the stations data from google maps API and load it here
// Later fetch it in search class

>>>>>>> master
class StationModel {
  String stationName;
  String imageUrl;
  int stationDistance;
  int rates;

  StationModel(
      this.imageUrl, this.stationName, this.stationDistance, this.rates);
}
