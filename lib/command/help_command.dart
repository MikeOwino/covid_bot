import 'package:covid_bot/command/command.dart';
import 'package:covid_bot/command/command_utility.dart';
import 'package:teledart/src/teledart/teledart.dart';
import 'package:teledart/src/telegram/model.dart';
import 'package:covid_bot/string_extension.dart';

class HelpCommand extends Command {
  HelpCommand(): super(name: HELP);

  @override
  Future<void> execute(Message message, TeleDart teledart) async {
    await teledart.replyMessage(message, '''
Welcome to @Coronaviruskenyabot 🦠. This bot gives you up-to-date information on Kenya and worldwide spread of the Covid-19 disease.
To get a quick overview of the current status, please use one of the commands below
*Data*
/${TODAY_PER_COUNTRY} show data per country on current day
/${TODAY_GLOBAL} show global data on current day
/${STATS_PERIOD} show data filtered by period

*Help*
/${SUPPORTED_COUNTRIES} get all available countries supported by the bot
/${SEARCH_SUPPORTED_COUNTRY} search if the input country is supported
/${HELP} show all available commands

'''.espaceCharacters(), parse_mode: 'MarkdownV2');
  }
}
