import 'dart:io';

import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer extends StatefulWidget {
  final String link;
  final String name;
  const ImageViewer({
    super.key,
    required this.link,
    this.tag = 0,
    required this.name,
  });
  final dynamic tag;
  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        tag: widget.tag,
        child: DismissiblePage(
          direction: DismissiblePageDismissDirection.vertical,
          onDismissed: () => Navigator.of(context).pop(),
          key: const Key("imageViewer"),
          child: widget.link.startsWith("assets")
              ? PhotoView(
                  imageProvider: AssetImage(widget.link),
                  errorBuilder: (context, error, stackTrace) => PhotoView(
                      imageProvider: const AssetImage("assets/profile.png")),
                )
              : widget.link.startsWith("http")
                  ? PhotoView(
                      imageProvider: NetworkImage(widget.link),
                      errorBuilder: (context, error, stackTrace) => PhotoView(
                          imageProvider:
                              const AssetImage("assets/profile.png")),
                    )
                  : PhotoView(
                      imageProvider: FileImage(File(widget.link)),
                      errorBuilder: (context, error, stackTrace) => PhotoView(
                          imageProvider:
                              const AssetImage("assets/profile.png")),
                    ),
        ),
      ),
    );
  }
}
