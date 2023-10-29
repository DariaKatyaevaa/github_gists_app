import 'package:flutter/material.dart';

class GistFilePage extends StatelessWidget {
  final String filename;
  final String fileContent;

  const GistFilePage({
    super.key,
    required this.filename,
    required this.fileContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 10,
        title: Text(filename),
      ),
      extendBodyBehindAppBar: false,
      body: Scrollbar(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  fileContent,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
