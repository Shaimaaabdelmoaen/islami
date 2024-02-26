import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami1/Ui/home/settings/languageBottomSheet.dart';
import 'package:islami1/Ui/home/settings/themeBottomSheet.dart';
import 'package:islami1/provider/settingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class settingsTap extends StatefulWidget{
  @override
  State<settingsTap> createState() => _settingsTapState();
}

class _settingsTapState extends State<settingsTap> {
  @override
  Widget build(BuildContext context) {
    var SettingsProvidr =Provider.of<settingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('theme'),
         InkWell(
           onTap: (){
             showThemeBottomSheet(context);
           },
           child: Container(
             padding: EdgeInsets.all(12),
             width: double.infinity,
             decoration: BoxDecoration(
               color: Theme.of(context).colorScheme.background,
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 color: Theme.of(context).dividerColor,width: 1
               )
             ),
             child:  Text(
               SettingsProvidr.isDarkEnable()
                 ?'dark'
                 :'light',
             style: Theme.of(context).textTheme.bodyMedium),
           ),
         ),
          SizedBox(height: 18,),
          Text('language'),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.
                  circular(12),
                  border: Border.all(
                      color: Theme.of(context).dividerColor,width: 1
                  )
              ),
              child:  Text('English',
                style: Theme.of(context).textTheme.bodyMedium),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context){
      return themeBottomSheet();

        });
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return languageBottomSheet();
    });
  }
}