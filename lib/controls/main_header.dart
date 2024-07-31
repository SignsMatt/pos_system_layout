import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Simon\'s BBQ Team',
                  style: textTheme.headlineLarge?.copyWith(
                    fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w900)
                        .fontFamily,
                  ),
                ),
                const SizedBox(height: 6.0),
                Text('Location ID# SIMON123',
                    style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Last Synced'),
              Text('3 mins ago'),
            ],
          ),
          const SizedBox(width: 15),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.help_outline),
            label: const Text('Help'),
            style: ElevatedButton.styleFrom(
              elevation: 1,
              foregroundColor: Colors.grey[700],
              padding: const EdgeInsets.all(18.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
