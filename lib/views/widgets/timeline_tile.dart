import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:levent_ozkan_personal_website/views/widgets/responsive_widget.dart';

class ExtraLine {
  String text;
  ExtraLine({
    @required this.text,
  });
}

class ExpandableTile extends StatefulWidget {
  const ExpandableTile({
    Key key,
    @required this.date,
    @required this.title,
    @required this.subtitle,
    this.isFirst: false,
    this.isLast: false,
    @required this.extras,
  }) : super(key: key);

  final String date;
  final String title;
  final String subtitle;
  final bool isLast;
  final bool isFirst;
  final List<ExtraLine> extras;

  @override
  _MyTimelineTileState createState() => _MyTimelineTileState();
}

class _MyTimelineTileState extends State<ExpandableTile>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  AnimationController _controller;
  Animation<double> _iconTurns;
  Animation<double> _heightFactor;
  bool _isHovering = false;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeInOut));
    _iconTurns = _controller.drive(Tween<double>(begin: 0.0, end: 0.5)
        .chain(CurveTween(curve: Curves.easeIn)));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveWidget.isSmallScreen(context);
    final bool closed = !_isExpanded && _controller.isDismissed;

    final Widget details = Column(
      children: widget.extras
          .map(
            (e) => IntrinsicHeight(
          child: Row(
            children: [
              SizedBox(
                width: isSmall ? 0 : 200,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
              SizedBox(
                width: isSmall ? 16 : 32,
              ),
              Expanded(
                child: Row(
                  children: _contentChildren(context, e),
                ),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );

    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        return Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  !isSmall
                      ? Container(
                    width: 200,
                    padding: EdgeInsets.only(right: 32),
                    child: Text(
                      widget.date,
                      style:
                      Theme.of(context).textTheme.bodyText1.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.end,
                    ),
                  )
                      : Container(),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 2,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: isSmall ? 8 : 16,
                  ),
                  Expanded(
                    child: Tooltip(
                      message: 'Click to expand',
                      waitDuration: Duration(milliseconds: 300),
                      preferBelow: true,
                      child: InkWell(
                        onTap: _handleTap,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (_) {
                            setState(() {
                              _isHovering = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              _isHovering = false;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: _isHovering
                                  ? Colors.white12
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: isSmall ? 8 : 16,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50.0, bottom: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        isSmall
                                            ? Text(
                                          widget.date,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                            fontStyle:
                                            FontStyle.italic,
                                              color: Colors.white
                                          ),
                                        )
                                            : Container(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            widget.title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5.copyWith(color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          widget.subtitle,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1.copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                widget.extras.length>0 ?
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RotationTransition(
                                    turns: _iconTurns,
                                    child: const Icon(
                                      Icons.expand_more,
                                      color: Colors.white,
                                    ),
                                  ),
                                ) : Container(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                heightFactor: _heightFactor.value,
                child: closed ? null : details,
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _contentChildren(BuildContext context, ExtraLine e) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Icon(
            Icons.subdirectory_arrow_right,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            e.text,
            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
          ),
        ),
      ),
    ];
  }
}