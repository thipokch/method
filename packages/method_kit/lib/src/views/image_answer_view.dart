import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:method_kit/src/answer_format/image_answer_format.dart';
import 'package:method_kit/src/result/question/image_question_result.dart';
import 'package:method_kit/src/task/predefined_task/question_task.dart';
import 'package:method_kit/src/views/widget/task_view.dart';

class ImageAnswerView extends StatefulWidget {
  final QuestionTask questionTask;
  final ImageQuestionResult? result;

  const ImageAnswerView({
    Key? key,
    required this.questionTask,
    required this.result,
  }) : super(key: key);

  @override
  State<ImageAnswerView> createState() => _ImageAnswerViewState();
}

class _ImageAnswerViewState extends State<ImageAnswerView> {
  late final ImageAnswerFormat _imageAnswerFormat;
  late final DateTime _startDate;

  final bool _isValid = false;
  String filePath = '';

  @override
  void initState() {
    super.initState();
    _imageAnswerFormat = widget.questionTask.answerFormat as ImageAnswerFormat;
    _startDate = DateTime.now();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  // ignore: long-method
  Widget build(BuildContext context) {
    return TaskView(
      task: widget.questionTask,
      resultFunction: () => ImageQuestionResult(
        id: widget.questionTask.taskIdentifier,
        startDate: _startDate,
        endDate: DateTime.now(),
        valueIdentifier: filePath,
        result: filePath,
      ),
      isValid: _isValid || widget.questionTask.isOptional,
      title: widget.questionTask.title.isNotEmpty
          ? Text(
              widget.questionTask.title,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            )
          : widget.questionTask.content,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _optionsDialogBox();
                      },
                      child: Text(_imageAnswerFormat.buttonText),
                    ),
                    filePath.isNotEmpty
                        ? Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                filePath
                                    .split('/')[filePath.split('/').length - 1],
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _optionsDialogBox() => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Take a picture'),
                  onTap: () {
                    _openCamera();
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text('Select from Gallery'),
                  onTap: () {
                    _openGallery();
                  },
                ),
              ],
            ),
          ),
        ),
      );

  Future<void> _openCamera() async {
    var picture = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    // ignore: use_build_context_synchronously
    Navigator.pop(context);

    picture?.readAsBytes().then((value) {
      setState(() {
        filePath = picture.path;
      });
    });
  }

  Future<void> _openGallery() async {
    var picture = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    // ignore: use_build_context_synchronously
    Navigator.pop(context);

    picture?.readAsBytes().then((value) {
      setState(() {
        filePath = picture.path;
      });
    });
  }
}
