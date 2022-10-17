part of 'component.dart';

class _Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Acknowledgements",
        description: "",
        slivers: [
          AcknowledgementsList.sliver,
        ],
      );
}
