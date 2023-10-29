import 'package:flutter/material.dart';
import 'package:github_gists_app/presentation/pages/gist_info/widgets/white_shadow_container.dart';

class GistItemListItem extends StatelessWidget {
  final String filename;
  final String fileContent;
  final VoidCallback openFile;

  const GistItemListItem({
    super.key,
    required this.filename,
    required this.fileContent,
    required this.openFile,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openFile,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: RoundedFloatingContainer(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          filename,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                overflow: TextOverflow.ellipsis,
                              ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Theme.of(context).listTileTheme.textColor!.withOpacity(0.45),
                      size: 28.0,
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxHeight: 130, minWidth: double.infinity),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(8.0),
                child: Text(
                  fileContent,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
