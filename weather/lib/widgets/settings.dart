import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:felangel_weather/blocs/blocs.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingsBloc = BlocProvider.of<SettingsBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Configuração'),
      ),
      body: ListView(
        children: <Widget>[
          BlocBuilder(
            bloc: settingsBloc,
            builder: (_, SettingsState state) {
              return ListTile(
                title: Text(
                  'Unidade de Temperatura',
                ),
                isThreeLine: true,
                subtitle: Text('Usar sistema métrico (Célsius) para unidades de temperature.'),
                trailing: Switch(
                  value: state.temperatureUnits == TemperatureUnits.celsius,
                  onChanged: (_) =>
                      settingsBloc.dispatch(TemperatureUnitsToggled()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
