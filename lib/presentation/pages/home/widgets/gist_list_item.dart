import 'package:flutter/material.dart';
import 'package:github_gists_app/presentation/pages/shared_widgets/user_avatar_widget.dart';

class GistListItem extends StatelessWidget {
  final String gistName;
  final String userName;
  final String userAvatarUrl;
  final VoidCallback openGistInfo;

  const GistListItem({
    super.key,
    required this.gistName,
    required this.userAvatarUrl,
    required this.userName,
    required this.openGistInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: PhysicalShape(
        color: Theme.of(context).listTileTheme.tileColor!,
        elevation: 8,
        shadowColor: Theme.of(context).shadowColor,
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.all(16.0),
          onTap: openGistInfo,
          leading: UserAvatarWidget(avatarUrl: userAvatarUrl),
          trailing: Icon(
            Icons.navigate_next,
            color: Theme.of(context).listTileTheme.textColor!.withOpacity(0.45),
            size: 24.0,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                gistName,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
