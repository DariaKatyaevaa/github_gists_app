import 'package:flutter/material.dart';
import 'package:github_gists_app/domain/entities/commit.dart';
import 'package:github_gists_app/presentation/pages/gist_info/widgets/white_shadow_container.dart';

class CommitsTable extends StatelessWidget {
  final List<Commit> commits;

  const CommitsTable({
    super.key,
    required this.commits,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedFloatingContainer(
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
        },
        border: TableBorder.all(
          color: Theme.of(context).textTheme.labelSmall!.color!,
          borderRadius: BorderRadius.circular(10.0),
        ),
        children: [
          TableRow(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'created at',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'additions',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'deletions',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
          ..._createTable(context, commits),
        ],
      ),
    );
  }

  List<TableRow> _createTable(BuildContext context, List<Commit> commits) {
    final rows = List<TableRow>.empty(growable: true);
    for (var i = 0; i < commits.length; ++i) {
      final date = commits[i].committedAt;
      rows.add(
        TableRow(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${date.hour}:${date.minute}  ${date.day}.${date.month}.${date.year}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  commits[i].additions.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  commits[i].deletions.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return rows;
  }
}
