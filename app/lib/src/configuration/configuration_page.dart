import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../shared/stores/app_store.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurações',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Tema',
              style: theme.textTheme.titleMedium,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: appStore.themeMode.value,
              title: const Text('Sistema'),
              onChanged: (mode) {
                appStore.themeMode.value = mode!;
              },
            ),
            const SizedBox(height: 16),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: const Text('Claro'),
              onChanged: appStore.changeThemeMode,
            ),
            const SizedBox(height: 16),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Escuro'),
              onChanged: appStore.changeThemeMode,
            ),
            const SizedBox(height: 16),
            Text(
              'Controle de dados',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Apagar cache e reiniciar app'),
            ),
          ],
        ),
      ),
    );
  }
}
