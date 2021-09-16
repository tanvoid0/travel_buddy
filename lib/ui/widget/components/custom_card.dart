import 'package:flutter/material.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.header, this.body, this.footer, this.onPressed}) : super(key: key);
  final Widget? header, body, footer;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: ThemeConst.padding),
        child: Card(
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.all(ThemeConst.padding),
            child: Column(
              children: <Widget>[
                if(header != null)
                  Container(child: header!),
                if(body != null)
                  Container(child: body!),
                if(footer!=null)
                  const Divider(),
                if(footer!=null)
                  Container(child: footer!),
              ]
            ),
          )
        ),
      ),
    );
  }
}
