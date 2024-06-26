import '/utils/const.dart';
import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
    this.Switch,
    required this.isswitch,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final bool isswitch;
  final Color? textColor;
  final Widget? Switch;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var iconColor = btncolor;
    return ListTile(
        onTap: onPress, //****************function here *********** */
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: iconColor.withOpacity(0.1),
          ),
          child: Icon(
            icon,
            color: theme.textTheme.bodyText1!.color,
          ),
        ),
        //************* text here *********/
        title: Text(title),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      const Color.fromARGB(255, 158, 158, 158).withOpacity(0.1),
                ),
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18.0,
                  color: theme.textTheme.bodyText1!.color,
                ))
            : isswitch
                ? Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 158, 158, 158)
                          .withOpacity(0.1),
                    ),
                    child: Switch)
                : null);
  }
}
