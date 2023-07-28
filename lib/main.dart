import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlight/languages/python.dart';
import 'package:chaquopy/chaquopy.dart';

void main() {
  runApp(const CodeEditor());
}

final controller = CodeController(
  text: '#Enter your code here', // Initial code
  language: python,
);

class CodeEditor extends StatefulWidget {
  const CodeEditor();

  @override
  _CodeEditorState createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  String output = '';
  bool isHovered = false;
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          title: Text(
            'File      Edit      Selection      View      Go      Run      Terminal      Help',
            textAlign: TextAlign.center,
            style: GoogleFonts.comfortaa(
              color: Color(0xFFEAEAEA),
              fontSize: 12,
            ),
          ),
          backgroundColor: Color(0xFF3C3C3C),
        ),
        body: Row(
          children: [
            Container(
              width: 70,
              color: Color(0xFF333333),///Side Bar
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Tooltip(
                    message: 'File',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/icons8-file-64.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Tooltip(
                    message: 'Debug',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/debug.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Tooltip(
                    message: 'Search library',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/icons8-search-64.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Tooltip(
                    message: 'Board Manager',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/micro.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Tooltip(
                    message: 'Terminal',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/terminal.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 320,
                    width: 20,
                    color: Colors.transparent,
                  ),
                  Tooltip(
                    message: 'Settings',
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 42,
                        width: 40,
                        color: Colors.transparent,
                        child: Image.asset('icons/icons8-settings-64.png',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: double.infinity,
                    color: Color(0xFF252526),//Navigation bar top
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {},
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered = false;
                              });
                            },
                            child: Container(
                              height: 28,
                              width: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('icons/icon8-usb-on-24.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: isHovered ? Color(0xFF1B2127) : Colors.transparent,
                                  width: isHovered ? 2 : 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 40,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Port',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comfortaa(
                                  color: Color(0xFFEAEAEA),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 600,
                          color: Colors.transparent,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered1 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered1 = false;
                              });
                            },
                            child: Container(
                              height: 28,
                              width: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('icons/flash.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: isHovered1 ? Color(0xFF1B2127) : Colors.transparent,
                                  width: isHovered1 ? 2 : 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 40,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Flash',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comfortaa(
                                  color: Color(0xFFEAEAEA),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered2 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered2 = false;
                              });
                            },
                            child: Container(
                              height: 28,
                              width: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('icons/upload.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: isHovered2 ? Color(0xFF1B2127) : Colors.transparent,
                                  width: isHovered2 ? 2 : 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Upload',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comfortaa(
                                  color: Color(0xFFEAEAEA),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 430,
                          color: Colors.transparent,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered3 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered3 = false;
                              });
                            },
                            child: Container(
                              height: 28,
                              width: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('icons/wave.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: isHovered3 ? Color(0xFF1B2127) : Colors.transparent,
                                  width: isHovered3 ? 2 : 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Baud Rate',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comfortaa(
                                  color: Color(0xFFEAEAEA),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xFF23241F),
                      child: CodeTheme(
                        data: CodeThemeData(styles: monokaiSublimeTheme),
                        child: SingleChildScrollView(
                          child: CodeField(
                            controller: controller,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}