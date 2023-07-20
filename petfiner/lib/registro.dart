import 'package:flutter/material.dart';

void main() {
  runApp(CadastroWidget());
}

class CriarContaModel {
  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  TextEditingController? textControllerName;
  String? Function(BuildContext, String?)? textControllerNameValidator;

  TextEditingController? textControllerCelular;
  String? Function(BuildContext, String?)? textControllerCelularValidator;

  TextEditingController? textControllerEmail;
  String? Function(BuildContext, String?)? textControllerEmailValidator;

  TextEditingController? textControllerSenha;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerSenhaValidator;

  bool? checkboxValue;

  void dispose() {
    unfocusNode.dispose();
    textControllerName?.dispose();
    textControllerCelular?.dispose();
    textControllerEmail?.dispose();
    textControllerSenha?.dispose();
  }
}

class RegisterModel {
  TextEditingController? textControllerName;
  TextEditingController? textControllerCelular;
  TextEditingController? textControllerEmail;
  TextEditingController? textControllerSenha;

  void dispose() {
    textControllerName?.dispose();
    textControllerCelular?.dispose();
    textControllerEmail?.dispose();
    textControllerSenha?.dispose();
  }
}

class CadastroWidget extends StatefulWidget {
  const CadastroWidget({Key? key}) : super(key: key);

  @override
  _CadastroWidgetState createState() => _CadastroWidgetState();
}

class _CadastroWidgetState extends State<CadastroWidget> {
  late CriarContaModel _model;

  final formKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = CriarContaModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

//    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xf4f4f4f4),
        body: SafeArea(
          top: true,
          child: Container(
            width: 443,
            height: 940,
            // decoration: BoxDecoration(
            //   color: ,
            // ),
            child: Stack(
              children: [
                Container(
                  width: 443,
                  height: 338,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0, 0),
                      colors: [
                        Color(0xFF4596EA),
                        Color(0xFF2F4CA5),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 168, 12, 312),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.black,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 32, 8, 0),
                              child: TextFormField(
                                controller: _model.textControllerName,
                                autofocus: true,
                                autofillHints: [AutofillHints.name],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Nome e sobrenome',
                                  labelStyle:
                                      TextStyle(color: Color(0xFF81818C)),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x81818C),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF81818C),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person_outline,
                                    color: Color(0xFF8B97A2),
                                  ),
                                ),
                                style: TextStyle(color: Color(0x29292D)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Este campo é obrigatório';
                                  }
                                  return null; // Retornar null indica que o valor é válido
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 0),
                              child: TextFormField(
                                controller: _model.textControllerCelular,
                                autofocus: true,
                                autofillHints: [AutofillHints.telephoneNumber],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Celular',
                                  labelStyle:
                                      TextStyle(color: Color(0xFF81818C)),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF81818C),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.phone_rounded,
                                    color: Color(0xFF8B97A2),
                                  ),
                                ),
                                style: TextStyle(color: Color(0x29292D)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Este campo é obrigatório';
                                  }
                                  return null; // Retornar null indica que o valor é válido
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 0),
                              child: TextFormField(
                                controller: _model.textControllerEmail,
                                autofocus: true,
                                autofillHints: [AutofillHints.email],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  labelStyle:
                                      TextStyle(color: Color(0xFF81818C)),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF81818C),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF8B97A2),
                                  ),
                                ),
                                style: TextStyle(color: Color(0x29292D)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Este campo é obrigatório';
                                  }
                                  // Outras validações personalizadas...
                                  return null; // Retornar null indica que o valor é válido
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 0),
                              child: TextFormField(
                                controller: _model.textControllerSenha,
                                autofocus: true,
                                autofillHints: [AutofillHints.password],
                                obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle:
                                      TextStyle(color: Color(0xFF81818C)),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF81818C),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xB40A00),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock_outlined,
                                    color: Color(0xFF8B97A2),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.passwordVisibility =
                                          !_model.passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF8B97A2),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                style: TextStyle(color: Color(0x29292D)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Este campo é obrigatório';
                                  }
                                  return null; // Retornar null indica que o valor é válido
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.compact,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        unselectedWidgetColor: Color(0x00000),
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue ??= true,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.checkboxValue = newValue!);
                                        },
                                        activeColor: Color(0x4B63AE),
                                        checkColor: Color(0x4B63AE),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'concordo com os termos e condições',
                                    style: TextStyle(color: Color(0x000000)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 48, 0, 32),
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                child: Text(
                                  'Criar conta',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(382, 44),
                                  primary: Color(0xFF4B63AE),
                                  padding: EdgeInsets.zero,
                                  textStyle: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 56),
                        child: Text(
                          'ou continue com',
                          style: TextStyle(color: Color(0x29292D)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 64),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEF403B),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x3314181B),
                                  offset: Offset(0, 2),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Icon(
                              Icons.ac_unit,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF090F13),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x3314181B),
                                  offset: Offset(0, 2),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Icon(
                              Icons.ac_unit,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF3D5C98),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x3314181B),
                                  offset: Offset(0, 2),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Icon(
                              Icons.ac_unit,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 72),
                        child: Text(
                          'Já posui conta?  Entre aqui',
                          style: TextStyle(color: Color(0x29292D)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
