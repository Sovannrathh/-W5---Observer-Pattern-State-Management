import 'package:w5/EXERCISE_1/listeners/ride_pref_listener.dart';
import 'package:w5/EXERCISE_1/model/ride/locations.dart';
import 'package:w5/EXERCISE_1/model/ride_pref/ride_pref.dart';
import 'package:w5/EXERCISE_1/repository/mock/mock_ride_preferences_repository.dart';
import 'package:w5/EXERCISE_1/service/ride_prefs_service.dart';

class ConsoleLogger extends RidePrefListener {
  @override
  void onRidePrefChanged(RidePreference? ridePref) {
    print("Ride preference changed: $ridePref");
  }
}

void main() {
  RidePrefService.initialize(MockRidePreferencesRepository());

  ConsoleLogger logger = ConsoleLogger();
  RidePrefService.instance.addListener(logger);

  RidePreference pref1 = RidePreference(
    departure: Location(name: "London", country: Country.uk), // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: Location(name: "Manchester", country: Country.uk), // Paris
    requestedSeats: 2,
  );

  RidePreference pref2 = RidePreference(
    departure: Location(name: "London", country: Country.uk), // Manchester
    departureDate: DateTime.now().add(Duration(days: 7)), // Next week
    arrival: Location(name: "Manchester", country: Country.uk), // Lyon
    requestedSeats: 3,
  );

  RidePrefService.instance.setCurrentPreference(pref1);
  RidePrefService.instance.setCurrentPreference(pref2);
}
