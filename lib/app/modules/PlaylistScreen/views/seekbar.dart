import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarData {
  Duration position;
  Duration duration;

  SeekBarData(this.position, this.duration);
}

class SeekBar extends StatefulWidget {
  final Duration position;
  final Duration duration;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangedEnd;
  const SeekBar(
      {Key? key,
      required this.position,
      required this.duration,
      this.onChanged,
      this.onChangedEnd})
      : super(key: key);

  @override
  State<SeekBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SeekBar> {
  @override
  Widget build(BuildContext context) {
    double? _dragValue;

    String _formatDuration(Duration? duration) {
      if (duration == null) {
        return '--:--';
      } else {
        String minutes = duration.inMinutes.toString().padLeft(2, '0');
        String seconds =
            duration.inSeconds.remainder(60).toString().padLeft(2, '0');
        return '$minutes:$seconds';
      }
    }

    return Row(
      children: [
        Text(
          _formatDuration(widget.position),
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                thumbShape: const RoundSliderThumbShape(
                  disabledThumbRadius: 4,
                  enabledThumbRadius: 4,
                ),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
                activeTrackColor: Colors.white.withOpacity(0.2),
                inactiveTrackColor: Colors.white,
                thumbColor: Colors.white,
                overlayColor: Colors.white),
            child: Slider(
              min: 0.0,
              max: widget.duration.inMicroseconds.toDouble(),
              value: min(
                _dragValue ?? widget.position.inMicroseconds.toDouble(),
                widget.position.inMilliseconds.toDouble(),
              ),
              onChanged: (value) {
                setState(() {
                  _dragValue = value;
                });

                if (widget.onChanged != null) {
                  widget.onChanged!(
                    Duration(
                      milliseconds: value.round(),
                    ),
                  );
                }
              },
              onChangeEnd: (value) {
                if (widget.onChangedEnd != null) {
                  widget.onChangedEnd!(
                    Duration(
                      milliseconds: value.round(),
                    ),
                  );
                }
                _dragValue = null;
              },
            ),
          ),
        ),
        Text(
          _formatDuration(widget.duration),
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
