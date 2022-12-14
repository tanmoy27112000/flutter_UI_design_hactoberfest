import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../variables/ui_variables.dart';


class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              const Positioned(
                  top: 0,
                  child: GlobalConatainer1(
                      containerheight: 0.15,
                      textSize: 20,
                      textFamily: 'Inter',
                      textColor: mainThemeSecondryColor,
                      textValue: "Datenschutz")),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(top: 130, left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Datenschutz',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten m??glich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit m??glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr??ckliche Zustimmung nicht an Dritte weitergegeben.\nWir weisen darauf hin, dass die Daten??bertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitsl??cken aufweisen kann. Ein l??ckenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht m??glich.\nDer Nutzung von im Rahmen der Impressumspflicht ver??ffentlichten Kontaktdaten durch Dritte zur ??bersendung von nicht ausdr??cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr??cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr??cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Datenschutzerkl??rung f??r die Nutzung von Google Analytics',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Diese Website benutzt Google Analytics, einen Webanalysedienst der Google Inc. (\"Google\"). Google Analytics verwendet sog. \"Cookies\", Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie erm??glichen. Die durch den Cookie erzeugten Informationen ??ber Ihre Benutzung dieser Website werden in der Regel an einen Server von Google in den USA ??bertragen und dort gespeichert. Im Falle der Aktivierung der IP-Anonymisierung auf dieser Webseite wird Ihre IP-Adresse von Google jedoch innerhalb von Mitgliedstaaten der Europ??ischen Union oder in anderen Vertragsstaaten des Abkommens ??ber den Europ??ischen Wirtschaftsraum zuvor gek??rzt.\nNur in Ausnahmef??llen wird die volle IP-Adresse an einen Server von Google in den USA ??bertragen und dort gek??rzt. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports ??ber die Websiteaktivit??ten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegen??ber dem Websitebetreiber zu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser ??bermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengef??hrt.\nSie k??nnen die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht s??mtliche Funktionen dieser Website vollumf??nglich werden nutzen k??nnen. Sie k??nnen dar??ber hinaus die Erfassung der durch das Cookie erzeugten und auf Ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem sie das unter dem folgenden Link verf??gbare Browser-Plugin herunterladen und installieren: http://tools.google.com/dlpage/gaoptout?hl=de.\n\n \n\nAuskunft, L??schung, Sperrung\nSie haben jederzeit das Recht auf unentgeltliche Auskunft ??ber Ihre gespeicherten personenbezogenen Daten, deren Herkunft und Empf??nger und den Zweck der Datenverarbeitung sowie ein Recht auf Berichtigung, Sperrung oder L??schung dieser Daten. Hierzu sowie zu weiteren Fragen zum Thema personenbezogene Daten k??nnen Sie sich jederzeit ??ber die im Impressum angegeben Adresse des Webseitenbetreibers an uns wenden.',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
