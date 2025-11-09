import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'files/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @home_logoutLabel.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get home_logoutLabel;

  /// No description provided for @home_startLabel.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get home_startLabel;

  /// No description provided for @home_settingsLabel.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get home_settingsLabel;

  /// No description provided for @home_patientsLabel.
  ///
  /// In en, this message translates to:
  /// **'Patients'**
  String get home_patientsLabel;

  /// No description provided for @home_sessionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get home_sessionsLabel;

  /// No description provided for @home_scheduleLabel.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get home_scheduleLabel;

  /// No description provided for @home_updateMultiplePatientsDesc.
  ///
  /// In en, this message translates to:
  /// **'Update multiple patients'**
  String get home_updateMultiplePatientsDesc;

  /// No description provided for @home_unableStartDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start'**
  String get home_unableStartDesc;

  /// No description provided for @home_browserSupportLabel.
  ///
  /// In en, this message translates to:
  /// **'Browser support'**
  String get home_browserSupportLabel;

  /// No description provided for @home_whastappSuportLabel.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp support'**
  String get home_whastappSuportLabel;

  /// No description provided for @home_syncSessionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Sync Sessions'**
  String get home_syncSessionsLabel;

  /// No description provided for @home_unableSendSessionDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to send session'**
  String get home_unableSendSessionDesc;

  /// No description provided for @home_patientDataSynchronizedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Patient data synchronized successfully'**
  String get home_patientDataSynchronizedSuccessfullyDesc;

  /// No description provided for @home_clickHoldPatientStartSelectionClickDesc.
  ///
  /// In en, this message translates to:
  /// **'Click and hold on a patient to start the selection, and click again to select the desired patients'**
  String get home_clickHoldPatientStartSelectionClickDesc;

  /// No description provided for @home_finishUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'To finish and update, click the update button'**
  String get home_finishUpdateDesc;

  /// No description provided for @home_noPatientsFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'No patients found'**
  String get home_noPatientsFoundDesc;

  /// No description provided for @home_accessOtherDataDesc.
  ///
  /// In en, this message translates to:
  /// **'To access other data, access the web platform'**
  String get home_accessOtherDataDesc;

  /// No description provided for @home_unableSearchSessionListDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to search session list.'**
  String get home_unableSearchSessionListDesc;

  /// No description provided for @home_checkYourInternetConnectionTryAgainDesc.
  ///
  /// In en, this message translates to:
  /// **'Check your internet connection and try again'**
  String get home_checkYourInternetConnectionTryAgainDesc;

  /// No description provided for @home_hashCopiedClipboardDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copied to clipboard'**
  String get home_hashCopiedClipboardDesc;

  /// No description provided for @home_apprenticeAbsentLabel.
  ///
  /// In en, this message translates to:
  /// **'Apprentice absent'**
  String get home_apprenticeAbsentLabel;

  /// No description provided for @home_errorLoadingPatientsListDesc.
  ///
  /// In en, this message translates to:
  /// **'Error loading patient list. Please try again'**
  String get home_errorLoadingPatientsListDesc;

  /// No description provided for @home_drawer_footer.
  ///
  /// In en, this message translates to:
  /// **'Made with ❤️ by the ABA+ team'**
  String get home_drawer_footer;

  /// No description provided for @home_drawer_error_message.
  ///
  /// In en, this message translates to:
  /// **'Error on opening the support page'**
  String get home_drawer_error_message;

  /// No description provided for @home_userLabel.
  ///
  /// In en, this message translates to:
  /// **'User:'**
  String get home_userLabel;

  /// No description provided for @home_aboutLabel.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get home_aboutLabel;

  /// No description provided for @home_lowMemoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Memory is running out. This may affect your use of the app.'**
  String get home_lowMemoryLabel;

  /// No description provided for @home_lowStorageLabel.
  ///
  /// In en, this message translates to:
  /// **'Storage is running out. This may affect your use of the app.'**
  String get home_lowStorageLabel;

  /// No description provided for @splash_somethingWrongDesc.
  ///
  /// In en, this message translates to:
  /// **'Oops... something went wrong'**
  String get splash_somethingWrongDesc;

  /// No description provided for @splash_tryAgainLabel.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get splash_tryAgainLabel;

  /// No description provided for @schedule_typeAppointmentAssessmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get schedule_typeAppointmentAssessmentLabel;

  /// No description provided for @schedule_typeAppointmentDailyEvolutionLabel.
  ///
  /// In en, this message translates to:
  /// **'Daily evolution'**
  String get schedule_typeAppointmentDailyEvolutionLabel;

  /// No description provided for @schedule_typeAppointmentSessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get schedule_typeAppointmentSessionLabel;

  /// No description provided for @schedule_typeAppointmentSupervisionLabel.
  ///
  /// In en, this message translates to:
  /// **'Supervision'**
  String get schedule_typeAppointmentSupervisionLabel;

  /// No description provided for @schedule_typeAppointmentSchoolSupportLabel.
  ///
  /// In en, this message translates to:
  /// **'School support'**
  String get schedule_typeAppointmentSchoolSupportLabel;

  /// No description provided for @schedule_typeAppointmentVisitLabel.
  ///
  /// In en, this message translates to:
  /// **'Visit'**
  String get schedule_typeAppointmentVisitLabel;

  /// No description provided for @schedule_typeAppointmentPlanningLabel.
  ///
  /// In en, this message translates to:
  /// **'Planning'**
  String get schedule_typeAppointmentPlanningLabel;

  /// No description provided for @schedule_typeAppointmentUndefinedLabel.
  ///
  /// In en, this message translates to:
  /// **'Undefined type'**
  String get schedule_typeAppointmentUndefinedLabel;

  /// No description provided for @schedule_typeSituationStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get schedule_typeSituationStartedLabel;

  /// No description provided for @schedule_typeSituationPendingLabel.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get schedule_typeSituationPendingLabel;

  /// No description provided for @schedule_typeSituationScheduledLabel.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get schedule_typeSituationScheduledLabel;

  /// No description provided for @schedule_typeSituationCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get schedule_typeSituationCanceledLabel;

  /// No description provided for @schedule_typeSituationAbsenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Absence'**
  String get schedule_typeSituationAbsenceLabel;

  /// No description provided for @schedule_typeSituationFinishedLabel.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get schedule_typeSituationFinishedLabel;

  /// No description provided for @schedule_typeSituationUndefinedLabel.
  ///
  /// In en, this message translates to:
  /// **'Undefinite situation'**
  String get schedule_typeSituationUndefinedLabel;

  /// No description provided for @schedule_typeFilterTodayLabel.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get schedule_typeFilterTodayLabel;

  /// No description provided for @schedule_typeFilterNextSevenDaysLabel.
  ///
  /// In en, this message translates to:
  /// **'Next 7 days'**
  String get schedule_typeFilterNextSevenDaysLabel;

  /// No description provided for @schedule_typeFilterLastSevenDaysLabel.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get schedule_typeFilterLastSevenDaysLabel;

  /// No description provided for @schedule_emptyAppointmentTypeFilterDesc.
  ///
  /// In en, this message translates to:
  /// **'No appointments for the selected option'**
  String get schedule_emptyAppointmentTypeFilterDesc;

  /// No description provided for @schedule_failureScheduleTitle.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch appointment list'**
  String get schedule_failureScheduleTitle;

  /// No description provided for @schedule_failureScheduleDesc.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection and try again'**
  String get schedule_failureScheduleDesc;

  /// No description provided for @schedule_emptyScheduleTitle.
  ///
  /// In en, this message translates to:
  /// **'There are no appointments in the last 7 days'**
  String get schedule_emptyScheduleTitle;

  /// No description provided for @schedule_emptyScheduleDesc.
  ///
  /// In en, this message translates to:
  /// **'To access older appointments, access the web platform'**
  String get schedule_emptyScheduleDesc;

  /// No description provided for @schedule_failureModalStartServiceDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start service'**
  String get schedule_failureModalStartServiceDesc;

  /// No description provided for @schedule_codeModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get schedule_codeModalTitle;

  /// No description provided for @schedule_statusModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get schedule_statusModalTitle;

  /// No description provided for @schedule_typeServiceModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Type of service'**
  String get schedule_typeServiceModalTitle;

  /// No description provided for @schedule_scheduleDateModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Scheduled date'**
  String get schedule_scheduleDateModalTitle;

  /// No description provided for @schedule_professionalModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Professional'**
  String get schedule_professionalModalTitle;

  /// No description provided for @schedule_serviceLocationModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Service Location'**
  String get schedule_serviceLocationModalTitle;

  /// No description provided for @schedule_observationsModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Observations'**
  String get schedule_observationsModalTitle;

  /// No description provided for @schedule_startServiceLabel.
  ///
  /// In en, this message translates to:
  /// **'Start service'**
  String get schedule_startServiceLabel;

  /// No description provided for @schedule_searchApprenticeLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Apprentice'**
  String get schedule_searchApprenticeLabel;

  /// No description provided for @abcNarrative_finishLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get abcNarrative_finishLabel;

  /// No description provided for @abcNarrative_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get abcNarrative_pauseLabel;

  /// No description provided for @abcNarrative_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get abcNarrative_cancelLabel;

  /// No description provided for @abcNarrative_abcNarrativeTitle.
  ///
  /// In en, this message translates to:
  /// **'{plural, plural, =0{ABC Narrative} =1{ABC Narratives} other {ABC Narrative}}'**
  String abcNarrative_abcNarrativeTitle(int plural);

  /// No description provided for @abcNarrative_hashCopiedDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copied to clipboard'**
  String get abcNarrative_hashCopiedDesc;

  /// No description provided for @abcNarrative_eventDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Event\'\'s Date'**
  String get abcNarrative_eventDateLabel;

  /// No description provided for @abcNarrative_durationLabel.
  ///
  /// In en, this message translates to:
  /// **'Duration:'**
  String get abcNarrative_durationLabel;

  /// No description provided for @abcNarrative_incidentLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Incident\'\'s Location:'**
  String get abcNarrative_incidentLocationLabel;

  /// No description provided for @abcNarrative_intensityDegreeLabel.
  ///
  /// In en, this message translates to:
  /// **'Degree of Intensity:'**
  String get abcNarrative_intensityDegreeLabel;

  /// No description provided for @abcNarrative_backgroundLabel.
  ///
  /// In en, this message translates to:
  /// **'A - Background:'**
  String get abcNarrative_backgroundLabel;

  /// No description provided for @abcNarrative_behaviorLabel.
  ///
  /// In en, this message translates to:
  /// **'B - Behavior:'**
  String get abcNarrative_behaviorLabel;

  /// No description provided for @abcNarrative_consequencesLabel.
  ///
  /// In en, this message translates to:
  /// **'C - Consequences:'**
  String get abcNarrative_consequencesLabel;

  /// No description provided for @abcNarrative_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get abcNarrative_continueLabel;

  /// No description provided for @abcNarrative_openLabel.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get abcNarrative_openLabel;

  /// No description provided for @abcNarrative_sendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get abcNarrative_sendLabel;

  /// No description provided for @abcNarrative_unableCreateAbcNarrativeDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to start the creation of the abc narrative'**
  String get abcNarrative_unableCreateAbcNarrativeDesc;

  /// No description provided for @abcNarrative_newAbcNarrativeLabel.
  ///
  /// In en, this message translates to:
  /// **'New ABC Narrative'**
  String get abcNarrative_newAbcNarrativeLabel;

  /// No description provided for @abcNarrative_noAbcNarrativeCreatedDesc.
  ///
  /// In en, this message translates to:
  /// **'No ABC narrative was created through the app'**
  String get abcNarrative_noAbcNarrativeCreatedDesc;

  /// No description provided for @abcNarrative_unableStartAbcNarrativeListDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start abc narrative list'**
  String get abcNarrative_unableStartAbcNarrativeListDesc;

  /// No description provided for @abcNarrative_newNarrativeLabel.
  ///
  /// In en, this message translates to:
  /// **'New Narrative'**
  String get abcNarrative_newNarrativeLabel;

  /// No description provided for @abcNarrative_abcNarrativeSavedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'ABC Narrative saved successfully'**
  String get abcNarrative_abcNarrativeSavedSuccessfullyDesc;

  /// No description provided for @abcNarrative_abcNarrativeActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'ABC Narrative Actions'**
  String get abcNarrative_abcNarrativeActionsTitle;

  /// No description provided for @abcNarrative_dateTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Date and Time:'**
  String get abcNarrative_dateTimeLabel;

  /// No description provided for @abcNarrative_chooseLocation.
  ///
  /// In en, this message translates to:
  /// **'Choose the location'**
  String get abcNarrative_chooseLocation;

  /// No description provided for @abcNarrative_successfullySentWebsiteDesc.
  ///
  /// In en, this message translates to:
  /// **'Successfully sent to the website'**
  String get abcNarrative_successfullySentWebsiteDesc;

  /// No description provided for @abcNarrative_notSendDueToConnectionProblemsDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the evolution due to internet connection problems'**
  String get abcNarrative_notSendDueToConnectionProblemsDesc;

  /// No description provided for @abcNarrative_startedAndClosedUnexpectedlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Started and closed unexpectedly.'**
  String get abcNarrative_startedAndClosedUnexpectedlyDesc;

  /// No description provided for @abcNarrative_pausedAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Paused and can be edited'**
  String get abcNarrative_pausedAndCanBeEditedDesc;

  /// No description provided for @abcNarrative_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get abcNarrative_statusCanceledLabel;

  /// No description provided for @abcNarrative_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get abcNarrative_statusSentLabel;

  /// No description provided for @abcNarrative_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get abcNarrative_statusPausedLabel;

  /// No description provided for @abcNarrative_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get abcNarrative_statusStartedLabel;

  /// No description provided for @abcNarrative_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get abcNarrative_statusCompletedLabel;

  /// No description provided for @abcNarrative_notSendNarrativeDueToConnectionDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the ABC narrative due to internet connection problems'**
  String get abcNarrative_notSendNarrativeDueToConnectionDesc;

  /// No description provided for @patientsList_dataSyncWithSuccessDesc.
  ///
  /// In en, this message translates to:
  /// **'Patient data synchronyzed successfully'**
  String get patientsList_dataSyncWithSuccessDesc;

  /// No description provided for @patientsList_searchApprenticeLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Apprentice'**
  String get patientsList_searchApprenticeLabel;

  /// No description provided for @patientsList_lastSyncLabel.
  ///
  /// In en, this message translates to:
  /// **'Last sync'**
  String get patientsList_lastSyncLabel;

  /// No description provided for @patientsList_notSynchronizedLabel.
  ///
  /// In en, this message translates to:
  /// **'not synchronized'**
  String get patientsList_notSynchronizedLabel;

  /// No description provided for @config_aboutLabel.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get config_aboutLabel;

  /// No description provided for @config_appVersionLabel.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get config_appVersionLabel;

  /// No description provided for @config_userLabel.
  ///
  /// In en, this message translates to:
  /// **'User:'**
  String get config_userLabel;

  /// No description provided for @config_userProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'User\'\'s profile:'**
  String get config_userProfileLabel;

  /// No description provided for @config_deviceHashCopiedToClipboardDesc.
  ///
  /// In en, this message translates to:
  /// **'Device\'\'s Hash copied to clipboard'**
  String get config_deviceHashCopiedToClipboardDesc;

  /// No description provided for @config_deviceHashLabel.
  ///
  /// In en, this message translates to:
  /// **'Device\'\'s Hash:'**
  String get config_deviceHashLabel;

  /// No description provided for @config_hashUnavailableDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash unavailable'**
  String get config_hashUnavailableDesc;

  /// No description provided for @config_unableGetDeviceDataDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to get data from device'**
  String get config_unableGetDeviceDataDesc;

  /// No description provided for @config_contactSupport.
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get config_contactSupport;

  /// No description provided for @config_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get config_language;

  /// No description provided for @avaliacoes_assessmentTitle.
  ///
  /// In en, this message translates to:
  /// **'{plural, plural, other{Avaliações} zero{Avaliação} one{Avaliações}}'**
  String avaliacoes_assessmentTitle(int plural);

  /// No description provided for @avaliacoes_somethingWrongHappenedDesc.
  ///
  /// In en, this message translates to:
  /// **'Something wrong happened'**
  String get avaliacoes_somethingWrongHappenedDesc;

  /// No description provided for @avaliacoes_unableToSyncDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to sync assessment'**
  String get avaliacoes_unableToSyncDesc;

  /// No description provided for @avaliacoes_unableToSearchDesc.
  ///
  /// In en, this message translates to:
  /// **'We are unable to search for assessments at this time'**
  String get avaliacoes_unableToSearchDesc;

  /// No description provided for @avaliacoes_noResponseOptionsDesc.
  ///
  /// In en, this message translates to:
  /// **'This test does not have response options. Please access the web platform and register'**
  String get avaliacoes_noResponseOptionsDesc;

  /// No description provided for @avaliacoes_categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category:'**
  String get avaliacoes_categoryLabel;

  /// No description provided for @avaliacoes_itemLabel.
  ///
  /// In en, this message translates to:
  /// **'Item:'**
  String get avaliacoes_itemLabel;

  /// No description provided for @avaliacoes_milestoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Milestone:'**
  String get avaliacoes_milestoneLabel;

  /// No description provided for @avaliacoes_criterionLabel.
  ///
  /// In en, this message translates to:
  /// **'Criterion:'**
  String get avaliacoes_criterionLabel;

  /// No description provided for @avaliacoes_understoodLabel.
  ///
  /// In en, this message translates to:
  /// **'Understood'**
  String get avaliacoes_understoodLabel;

  /// No description provided for @avaliacoes_assessmentPausedTitle.
  ///
  /// In en, this message translates to:
  /// **'Assessment Paused'**
  String get avaliacoes_assessmentPausedTitle;

  /// No description provided for @avaliacoes_assessmentCreatedOnDesc.
  ///
  /// In en, this message translates to:
  /// **'There is an assessment created on {date}'**
  String avaliacoes_assessmentCreatedOnDesc(String date);

  /// No description provided for @avaliacoes_finishAndStartAgainLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish and start again'**
  String get avaliacoes_finishAndStartAgainLabel;

  /// No description provided for @avaliacoes_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get avaliacoes_continueLabel;

  /// No description provided for @avaliacoes_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get avaliacoes_cancelLabel;

  /// No description provided for @avaliacoes_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get avaliacoes_pauseLabel;

  /// No description provided for @avaliacoes_finishLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get avaliacoes_finishLabel;

  /// No description provided for @avaliacoes_pauseAssessmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause Assessment'**
  String get avaliacoes_pauseAssessmentLabel;

  /// No description provided for @avaliacoes_cancelAssessmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel Assessment'**
  String get avaliacoes_cancelAssessmentLabel;

  /// No description provided for @avaliacoes_finishAssessmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish Assessment'**
  String get avaliacoes_finishAssessmentLabel;

  /// No description provided for @avaliacoes_wishToTakeActionDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you wish to {action} the assessment?'**
  String avaliacoes_wishToTakeActionDesc(String action);

  /// No description provided for @avaliacoes_wishToExitTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you wish to exit the assessment?'**
  String get avaliacoes_wishToExitTitle;

  /// No description provided for @avaliacoes_chooseActionOrReturnDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose one of the closing actions or return to the assessment'**
  String get avaliacoes_chooseActionOrReturnDesc;

  /// No description provided for @avaliacoes_recordAbsenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Record Absence'**
  String get avaliacoes_recordAbsenceLabel;

  /// No description provided for @avaliacoes_observationLabel.
  ///
  /// In en, this message translates to:
  /// **'Observation'**
  String get avaliacoes_observationLabel;

  /// No description provided for @avaliacoes_deleteObjectiveLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete objective'**
  String get avaliacoes_deleteObjectiveLabel;

  /// No description provided for @avaliacoes_wishToDeleteObjectiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you wish to delete the objective?'**
  String get avaliacoes_wishToDeleteObjectiveDesc;

  /// No description provided for @avaliacoes_deleteLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get avaliacoes_deleteLabel;

  /// No description provided for @avaliacoes_skillLabel.
  ///
  /// In en, this message translates to:
  /// **'Skill'**
  String get avaliacoes_skillLabel;

  /// No description provided for @avaliacoes_nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name:'**
  String get avaliacoes_nameLabel;

  /// No description provided for @avaliacoes_codeLabel.
  ///
  /// In en, this message translates to:
  /// **'Código:'**
  String get avaliacoes_codeLabel;

  /// No description provided for @avaliacoes_orderLabel.
  ///
  /// In en, this message translates to:
  /// **'Ordem:'**
  String get avaliacoes_orderLabel;

  /// No description provided for @avaliacoes_noAssessmentPerformedDesc.
  ///
  /// In en, this message translates to:
  /// **'You have no assessment performed on this device'**
  String get avaliacoes_noAssessmentPerformedDesc;

  /// No description provided for @avaliacoes_unableToStartAssessmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start the assessment. Please try again or contact support'**
  String get avaliacoes_unableToStartAssessmentDesc;

  /// No description provided for @avaliacoes_unableToLoadAssessmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the assessment. Please try again or contact support'**
  String get avaliacoes_unableToLoadAssessmentDesc;

  /// No description provided for @avaliacoes_assessmentHasNoObjectivesDesc.
  ///
  /// In en, this message translates to:
  /// **'The assessment has no objectives'**
  String get avaliacoes_assessmentHasNoObjectivesDesc;

  /// No description provided for @avaliacoes_unableToLoadObjectivesDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to load objectives. Please try again'**
  String get avaliacoes_unableToLoadObjectivesDesc;

  /// No description provided for @avaliacoes_hashCopiedDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copiado para a área de transferência'**
  String get avaliacoes_hashCopiedDesc;

  /// No description provided for @avaliacoes_statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String avaliacoes_statusLabel(String status);

  /// No description provided for @avaliacoes_startLabel.
  ///
  /// In en, this message translates to:
  /// **'Start:'**
  String get avaliacoes_startLabel;

  /// No description provided for @avaliacoes_endLabel.
  ///
  /// In en, this message translates to:
  /// **'End:'**
  String get avaliacoes_endLabel;

  /// No description provided for @avaliacoes_pauseColonLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause:'**
  String get avaliacoes_pauseColonLabel;

  /// No description provided for @avaliacoes_submissionLabel.
  ///
  /// In en, this message translates to:
  /// **'Submission:'**
  String get avaliacoes_submissionLabel;

  /// No description provided for @avaliacoes_hashLabel.
  ///
  /// In en, this message translates to:
  /// **'Hash:'**
  String get avaliacoes_hashLabel;

  /// No description provided for @avaliacoes_observationColonLabel.
  ///
  /// In en, this message translates to:
  /// **'Observation:'**
  String get avaliacoes_observationColonLabel;

  /// No description provided for @avaliacoes_assessmentNotSubmittedDesc.
  ///
  /// In en, this message translates to:
  /// **'The assessment was not submitted due to data inconsistency. Please contact support'**
  String get avaliacoes_assessmentNotSubmittedDesc;

  /// No description provided for @avaliacoes_selectLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Select a level'**
  String get avaliacoes_selectLevelLabel;

  /// No description provided for @avaliacoes_notUpdatedLabel.
  ///
  /// In en, this message translates to:
  /// **'Not updated'**
  String get avaliacoes_notUpdatedLabel;

  /// No description provided for @avaliacoes_updatedAtDesc.
  ///
  /// In en, this message translates to:
  /// **'Updated at: {updatedAt}'**
  String avaliacoes_updatedAtDesc(String updatedAt);

  /// No description provided for @avaliacoes_typeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type:'**
  String get avaliacoes_typeLabel;

  /// No description provided for @avaliacoes_levelLabel.
  ///
  /// In en, this message translates to:
  /// **'Level:'**
  String get avaliacoes_levelLabel;

  /// No description provided for @avaliacoes_levelsLabel.
  ///
  /// In en, this message translates to:
  /// **'Levels'**
  String get avaliacoes_levelsLabel;

  /// No description provided for @avaliacoes_testsLabel.
  ///
  /// In en, this message translates to:
  /// **'Tests'**
  String get avaliacoes_testsLabel;

  /// No description provided for @avaliacoes_skillsAndLevelsLabel.
  ///
  /// In en, this message translates to:
  /// **'Skills and levels'**
  String get avaliacoes_skillsAndLevelsLabel;

  /// No description provided for @avaliacoes_skillsAndTestsLabel.
  ///
  /// In en, this message translates to:
  /// **'Skills and tests'**
  String get avaliacoes_skillsAndTestsLabel;

  /// No description provided for @avaliacoes_levelsAndTestsLabel.
  ///
  /// In en, this message translates to:
  /// **'Levels and tests'**
  String get avaliacoes_levelsAndTestsLabel;

  /// No description provided for @avaliacoes_objectiveLabel.
  ///
  /// In en, this message translates to:
  /// **'Objective:'**
  String get avaliacoes_objectiveLabel;

  /// No description provided for @avaliacoes_editLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get avaliacoes_editLabel;

  /// No description provided for @avaliacoes_unableToActionAssessmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to {action} the assessment'**
  String avaliacoes_unableToActionAssessmentDesc(String action);

  /// No description provided for @avaliacoes_canceledLabel.
  ///
  /// In en, this message translates to:
  /// **'canceled'**
  String get avaliacoes_canceledLabel;

  /// No description provided for @avaliacoes_pausedLabel.
  ///
  /// In en, this message translates to:
  /// **'paused'**
  String get avaliacoes_pausedLabel;

  /// No description provided for @avaliacoes_finishedLabel.
  ///
  /// In en, this message translates to:
  /// **'finished'**
  String get avaliacoes_finishedLabel;

  /// No description provided for @avaliacoes_assessmentActionSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Assessment {action} successfully'**
  String avaliacoes_assessmentActionSuccessfullyDesc(String action);

  /// No description provided for @avaliacoes_errorSavingResponseDesc.
  ///
  /// In en, this message translates to:
  /// **'Error saving response'**
  String get avaliacoes_errorSavingResponseDesc;

  /// No description provided for @avaliacoes_manageObjectivesLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage objectives'**
  String get avaliacoes_manageObjectivesLabel;

  /// No description provided for @avaliacoes_somethingWentWrongDesc.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get avaliacoes_somethingWentWrongDesc;

  /// No description provided for @avaliacoes_unableToSyncAssessmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to synchronize the assessment'**
  String get avaliacoes_unableToSyncAssessmentDesc;

  /// No description provided for @avaliacoes_selectTheLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Select the level'**
  String get avaliacoes_selectTheLevelLabel;

  /// No description provided for @avaliacoes_selectTheSkillLabel.
  ///
  /// In en, this message translates to:
  /// **'Select the skill'**
  String get avaliacoes_selectTheSkillLabel;

  /// No description provided for @avaliacoes_insertTheObjectiveLabel.
  ///
  /// In en, this message translates to:
  /// **'Insert the objective'**
  String get avaliacoes_insertTheObjectiveLabel;

  /// No description provided for @avaliacoes_createObjectiveLabel.
  ///
  /// In en, this message translates to:
  /// **'Create Objective'**
  String get avaliacoes_createObjectiveLabel;

  /// No description provided for @avaliacoes_levelTitle.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get avaliacoes_levelTitle;

  /// No description provided for @avaliacoes_objectiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Objective'**
  String get avaliacoes_objectiveTitle;

  /// No description provided for @avaliacoes_objectiveCreatedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Objetivo criado com sucesso'**
  String get avaliacoes_objectiveCreatedSuccessfullyDesc;

  /// No description provided for @avaliacoes_unableCreateObjectiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to create objective'**
  String get avaliacoes_unableCreateObjectiveDesc;

  /// No description provided for @avaliacoes_objectiveSuccessfullyEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Objective successfully edited'**
  String get avaliacoes_objectiveSuccessfullyEditedDesc;

  /// No description provided for @avaliacoes_unableEditObjectiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to edit objective'**
  String get avaliacoes_unableEditObjectiveDesc;

  /// No description provided for @avaliacoes_objectiveSuccessfullyDeletedDesc.
  ///
  /// In en, this message translates to:
  /// **'Objective successfully deleted'**
  String get avaliacoes_objectiveSuccessfullyDeletedDesc;

  /// No description provided for @avaliacoes_unableDeleteObjectiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to delete objective'**
  String get avaliacoes_unableDeleteObjectiveDesc;

  /// No description provided for @avaliacoes_unableCompletePausedAssessmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to complete the paused assessment'**
  String get avaliacoes_unableCompletePausedAssessmentDesc;

  /// No description provided for @avaliacoes_protocolsTitle.
  ///
  /// In en, this message translates to:
  /// **'Protocols'**
  String get avaliacoes_protocolsTitle;

  /// No description provided for @avaliacoes_completedTitle.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get avaliacoes_completedTitle;

  /// No description provided for @avaliacoes_searchSkillsTitle.
  ///
  /// In en, this message translates to:
  /// **'Search skills'**
  String get avaliacoes_searchSkillsTitle;

  /// No description provided for @avaliacoes_assessmentDateTitle.
  ///
  /// In en, this message translates to:
  /// **'Assessment Date'**
  String get avaliacoes_assessmentDateTitle;

  /// No description provided for @avaliacoes_dialogSaveLabel.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get avaliacoes_dialogSaveLabel;

  /// No description provided for @avaliacoes_dialogCloseLabel.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get avaliacoes_dialogCloseLabel;

  /// No description provided for @avaliacoes_intervieweesTitle.
  ///
  /// In en, this message translates to:
  /// **'Interviewed'**
  String get avaliacoes_intervieweesTitle;

  /// No description provided for @avaliacoes_intervieweesParentsLabel.
  ///
  /// In en, this message translates to:
  /// **'Parents Interviewed'**
  String get avaliacoes_intervieweesParentsLabel;

  /// No description provided for @avaliacoes_intervieweesOutherLabel.
  ///
  /// In en, this message translates to:
  /// **'Other Interviewees'**
  String get avaliacoes_intervieweesOutherLabel;

  /// No description provided for @avaliacoes_commentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get avaliacoes_commentsTitle;

  /// No description provided for @avaliacoes_thereAreNoSkilEligibleLevelDesc.
  ///
  /// In en, this message translates to:
  /// **'There are no skill eligible for this level at this time'**
  String get avaliacoes_thereAreNoSkilEligibleLevelDesc;

  /// No description provided for @avaliacoes_thereAreNoTestsForSkillEligible.
  ///
  /// In en, this message translates to:
  /// **'No tests were found for this skill.'**
  String get avaliacoes_thereAreNoTestsForSkillEligible;

  /// No description provided for @avaliacoes_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get avaliacoes_statusCanceledLabel;

  /// No description provided for @avaliacoes_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get avaliacoes_statusSentLabel;

  /// No description provided for @avaliacoes_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get avaliacoes_statusPausedLabel;

  /// No description provided for @avaliacoes_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get avaliacoes_statusStartedLabel;

  /// No description provided for @avaliacoes_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get avaliacoes_statusCompletedLabel;

  /// No description provided for @avaliacoes_schedulingCodeDesc.
  ///
  /// In en, this message translates to:
  /// **'This assessment is linked to code appointment'**
  String get avaliacoes_schedulingCodeDesc;

  /// No description provided for @avaliacoes_aditionalInfoPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter additional information'**
  String get avaliacoes_aditionalInfoPlaceholder;

  /// No description provided for @avaliacoes_unableToStartAssessmentErrorSpecifiedDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start the assessment. Please access the web platform and check the {error} list for this protocol.'**
  String avaliacoes_unableToStartAssessmentErrorSpecifiedDesc(String error);

  /// No description provided for @avaliacoes_unableToSearchAssessmentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch assessments at this time, please try again or contact support.'**
  String get avaliacoes_unableToSearchAssessmentsDesc;

  /// No description provided for @avaliacoes_unableToLoadAssessmentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the company you are accessing, please log out and log in again or contact support.'**
  String get avaliacoes_unableToLoadAssessmentsDesc;

  /// No description provided for @pastaCurricular_title.
  ///
  /// In en, this message translates to:
  /// **'Curriculum Folder'**
  String get pastaCurricular_title;

  /// No description provided for @pastaCurricular_curriculumFolderSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Curriculum Folder Selection'**
  String get pastaCurricular_curriculumFolderSelectionTitle;

  /// No description provided for @pastaCurricular_apprenticeDataSynchronizedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Apprentice data synchronized successfully'**
  String get pastaCurricular_apprenticeDataSynchronizedSuccessfullyDesc;

  /// No description provided for @pastaCurricular_apprenticeDataSyncedWaitSyncAgainDesc.
  ///
  /// In en, this message translates to:
  /// **'Apprentice data synced, wait 5 minutes to sync again'**
  String get pastaCurricular_apprenticeDataSyncedWaitSyncAgainDesc;

  /// No description provided for @pastaCurricular_theprogramsFolderEligibleTargetsStimuliDisplayingInformationDesc.
  ///
  /// In en, this message translates to:
  /// **'The programs in the folder have no eligible targets/stimuli for displaying information'**
  String
  get pastaCurricular_theprogramsFolderEligibleTargetsStimuliDisplayingInformationDesc;

  /// No description provided for @pastaCurricular_checkTargetsStimuliWebSystemDesc.
  ///
  /// In en, this message translates to:
  /// **'Check targets/stimuli in the web system'**
  String get pastaCurricular_checkTargetsStimuliWebSystemDesc;

  /// No description provided for @pastaCurricular_thereProblemLoadingCurriculumFolderDetailsDesc.
  ///
  /// In en, this message translates to:
  /// **'There was a problem loading curriculum folder details'**
  String get pastaCurricular_thereProblemLoadingCurriculumFolderDetailsDesc;

  /// No description provided for @pastaCurricular_logOutLogBackNewSearchDesc.
  ///
  /// In en, this message translates to:
  /// **'Log out and log back in for a new search.'**
  String get pastaCurricular_logOutLogBackNewSearchDesc;

  /// No description provided for @pastaCurricular_theApprenticeSynchronizedFoldersCannotSearchedDesc.
  ///
  /// In en, this message translates to:
  /// **'The apprentice has not yet been synchronized or the folders cannot be searched'**
  String get pastaCurricular_theApprenticeSynchronizedFoldersCannotSearchedDesc;

  /// No description provided for @pastaCurricular_pullDownRefreshApprenticeFoldersDesc.
  ///
  /// In en, this message translates to:
  /// **'Pull down to refresh that apprentice\'\'s folders.'**
  String get pastaCurricular_pullDownRefreshApprenticeFoldersDesc;

  /// No description provided for @pastaCurricular_numberProgramsLabel.
  ///
  /// In en, this message translates to:
  /// **'Number of Programs'**
  String get pastaCurricular_numberProgramsLabel;

  /// No description provided for @pastaCurricular_seeDetailsLabel.
  ///
  /// In en, this message translates to:
  /// **'See details'**
  String get pastaCurricular_seeDetailsLabel;

  /// No description provided for @pastaCurricular_beginSessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Begin session'**
  String get pastaCurricular_beginSessionLabel;

  /// No description provided for @pastaCurricular_targetInformationLabel.
  ///
  /// In en, this message translates to:
  /// **'Target information'**
  String get pastaCurricular_targetInformationLabel;

  /// No description provided for @pastaCurricular_nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get pastaCurricular_nameLabel;

  /// No description provided for @pastaCurricular_categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get pastaCurricular_categoryLabel;

  /// No description provided for @pastaCurricular_whatYouWantDoLabel.
  ///
  /// In en, this message translates to:
  /// **'What do you want to do?'**
  String get pastaCurricular_whatYouWantDoLabel;

  /// No description provided for @pastaCurricular_thereAlreadySessionDayDesc.
  ///
  /// In en, this message translates to:
  /// **'There is already a session started on {date} at {hour} for this apprentice. Do you want to continue?'**
  String pastaCurricular_thereAlreadySessionDayDesc(String date, String hour);

  /// No description provided for @pastaCurricular_yesContinueServiceDesc.
  ///
  /// In en, this message translates to:
  /// **'Yes, continue service'**
  String get pastaCurricular_yesContinueServiceDesc;

  /// No description provided for @pastaCurricular_noFinishStartNewOneDesc.
  ///
  /// In en, this message translates to:
  /// **'No, finish and start a new one'**
  String get pastaCurricular_noFinishStartNewOneDesc;

  /// No description provided for @pastaCurricular_criteriaInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Criteria information'**
  String get pastaCurricular_criteriaInformationTitle;

  /// No description provided for @pastaCurricular_programInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Program Information'**
  String get pastaCurricular_programInformationTitle;

  /// No description provided for @pastaCurricular_typeTeachingTitle.
  ///
  /// In en, this message translates to:
  /// **'Type of Teaching'**
  String get pastaCurricular_typeTeachingTitle;

  /// No description provided for @pastaCurricular_numberAttemptsLabel.
  ///
  /// In en, this message translates to:
  /// **'Number of Attempts'**
  String get pastaCurricular_numberAttemptsLabel;

  /// No description provided for @pastaCurricular_scaleLabel.
  ///
  /// In en, this message translates to:
  /// **'Scale'**
  String get pastaCurricular_scaleLabel;

  /// No description provided for @pastaCurricular_skillLabel.
  ///
  /// In en, this message translates to:
  /// **'Skill'**
  String get pastaCurricular_skillLabel;

  /// No description provided for @pastaCurricular_procedureLabel.
  ///
  /// In en, this message translates to:
  /// **'Procedure'**
  String get pastaCurricular_procedureLabel;

  /// No description provided for @pastaCurricular_sdLabel.
  ///
  /// In en, this message translates to:
  /// **'SD'**
  String get pastaCurricular_sdLabel;

  /// No description provided for @pastaCurricular_materialsLabel.
  ///
  /// In en, this message translates to:
  /// **'Materials'**
  String get pastaCurricular_materialsLabel;

  /// No description provided for @pastaCurricular_tipStepLabel.
  ///
  /// In en, this message translates to:
  /// **'Tip Step'**
  String get pastaCurricular_tipStepLabel;

  /// No description provided for @pastaCurricular_correctionProcedureLabel.
  ///
  /// In en, this message translates to:
  /// **'Correction Procedure'**
  String get pastaCurricular_correctionProcedureLabel;

  /// No description provided for @pastaCurricular_learningCriteriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Learning Criteria'**
  String get pastaCurricular_learningCriteriaLabel;

  /// No description provided for @pastaCurricular_objectives.
  ///
  /// In en, this message translates to:
  /// **'Objectives'**
  String get pastaCurricular_objectives;

  /// No description provided for @pastaCurricular_apprenticeHasNoCurriculumFolderDesc.
  ///
  /// In en, this message translates to:
  /// **'The apprentice has no registered curriculum folders'**
  String get pastaCurricular_apprenticeHasNoCurriculumFolderDesc;

  /// No description provided for @pastaCurricular_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get pastaCurricular_continueLabel;

  /// No description provided for @pastaCurricular_startSessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Start Session'**
  String get pastaCurricular_startSessionLabel;

  /// No description provided for @pastaCurricular_folderNoProgramEligibleDesc.
  ///
  /// In en, this message translates to:
  /// **'The curriculum folder has no eligible programs'**
  String get pastaCurricular_folderNoProgramEligibleDesc;

  /// No description provided for @pastaCurrilular_accessWebSite.
  ///
  /// In en, this message translates to:
  /// **'Access our web platform to register'**
  String get pastaCurrilular_accessWebSite;

  /// No description provided for @pastaCurricular_chooseOptionAndStart.
  ///
  /// In en, this message translates to:
  /// **'Below are the CV Folder options for the patient. Choose one and start the session.'**
  String get pastaCurricular_chooseOptionAndStart;

  /// No description provided for @pastaCurricular_targets.
  ///
  /// In en, this message translates to:
  /// **'Targets'**
  String get pastaCurricular_targets;

  /// No description provided for @pastaCurricular_criteria.
  ///
  /// In en, this message translates to:
  /// **'Criteria'**
  String get pastaCurricular_criteria;

  /// No description provided for @routine_routineRecordsTitle.
  ///
  /// In en, this message translates to:
  /// **'Routine Records'**
  String get routine_routineRecordsTitle;

  /// No description provided for @routine_newRoutineRecordLabel.
  ///
  /// In en, this message translates to:
  /// **'New Routine Record'**
  String get routine_newRoutineRecordLabel;

  /// No description provided for @routine_noRoutineRecordsCreatedThroughApplicationDesc.
  ///
  /// In en, this message translates to:
  /// **'No routine records were created through the application'**
  String get routine_noRoutineRecordsCreatedThroughApplicationDesc;

  /// No description provided for @routine_unableStartRoutineRecordDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start routine record'**
  String get routine_unableStartRoutineRecordDesc;

  /// No description provided for @routine_newRecordLabel.
  ///
  /// In en, this message translates to:
  /// **'New Record'**
  String get routine_newRecordLabel;

  /// No description provided for @routine_unableStartRoutineRecordCreationDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start routine record creation'**
  String get routine_unableStartRoutineRecordCreationDesc;

  /// No description provided for @routine_dailyRecordSavedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Daily record saved successfully'**
  String get routine_dailyRecordSavedSuccessfullyDesc;

  /// No description provided for @routine_routineRecordActionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Routine Record Actions'**
  String get routine_routineRecordActionsLabel;

  /// No description provided for @routine_expectedOutcomeLabel.
  ///
  /// In en, this message translates to:
  /// **'Expected Outcome:'**
  String get routine_expectedOutcomeLabel;

  /// No description provided for @routine_yesLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get routine_yesLabel;

  /// No description provided for @routine_noLabel.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get routine_noLabel;

  /// No description provided for @routine_recordTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Record Type:'**
  String get routine_recordTypeLabel;

  /// No description provided for @routine_locationIncidenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Incidence Location:'**
  String get routine_locationIncidenceLabel;

  /// No description provided for @routine_reportLabel.
  ///
  /// In en, this message translates to:
  /// **'Report:'**
  String get routine_reportLabel;

  /// No description provided for @routine_hashCopiedClipboardDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copied to clipboard'**
  String get routine_hashCopiedClipboardDesc;

  /// No description provided for @routine_expectedResponseLabel.
  ///
  /// In en, this message translates to:
  /// **'Expected Response'**
  String get routine_expectedResponseLabel;

  /// No description provided for @routine_finishLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get routine_finishLabel;

  /// No description provided for @routine_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get routine_pauseLabel;

  /// No description provided for @routine_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get routine_cancelLabel;

  /// No description provided for @routine_dateTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Date and Time:'**
  String get routine_dateTimeLabel;

  /// No description provided for @routine_hashLabel.
  ///
  /// In en, this message translates to:
  /// **'Hash: {hash}'**
  String routine_hashLabel(String hash);

  /// No description provided for @routine_dateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get routine_dateLabel;

  /// No description provided for @routine_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get routine_continueLabel;

  /// No description provided for @routine_sendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get routine_sendLabel;

  /// No description provided for @routine_routineActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Routine Actions'**
  String get routine_routineActionsTitle;

  /// No description provided for @routine_chooseLocation.
  ///
  /// In en, this message translates to:
  /// **'Choose the location'**
  String get routine_chooseLocation;

  /// No description provided for @routine_chooseType.
  ///
  /// In en, this message translates to:
  /// **'Choose the type'**
  String get routine_chooseType;

  /// No description provided for @routine_errorEmptyTypeRegisterDesc.
  ///
  /// In en, this message translates to:
  /// **'No type of record has been registered. Please access the web platform and register'**
  String get routine_errorEmptyTypeRegisterDesc;

  /// No description provided for @routine_errorEmptyLocalIncidentDesc.
  ///
  /// In en, this message translates to:
  /// **'No incident location has been registered. Please access the web platform and register'**
  String get routine_errorEmptyLocalIncidentDesc;

  /// No description provided for @routine_savedDeviceOnlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Routine Record saved on device only.'**
  String get routine_savedDeviceOnlyDesc;

  /// No description provided for @routine_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get routine_statusCanceledLabel;

  /// No description provided for @routine_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get routine_statusSentLabel;

  /// No description provided for @routine_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get routine_statusPausedLabel;

  /// No description provided for @routine_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get routine_statusStartedLabel;

  /// No description provided for @routine_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get routine_statusCompletedLabel;

  /// No description provided for @routine_statusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Status Subtitle'**
  String get routine_statusSubtitle;

  /// No description provided for @routine_successfullySentWebsiteDesc.
  ///
  /// In en, this message translates to:
  /// **'Successfully sent to the website'**
  String get routine_successfullySentWebsiteDesc;

  /// No description provided for @routine_notSendDueToConnectionProblemsDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the evolution due to internet connection problems'**
  String get routine_notSendDueToConnectionProblemsDesc;

  /// No description provided for @routine_pausedAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Paused and can be edited'**
  String get routine_pausedAndCanBeEditedDesc;

  /// No description provided for @routine_canceledAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Canceled and can be edited'**
  String get routine_canceledAndCanBeEditedDesc;

  /// No description provided for @routine_startedAndClosedUnexpectedlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Started and closed unexpectedly.'**
  String get routine_startedAndClosedUnexpectedlyDesc;

  /// No description provided for @dailyEvolution_dailyEvolutionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Evolutions'**
  String get dailyEvolution_dailyEvolutionsTitle;

  /// No description provided for @dailyEvolution_newEvolutionTitle.
  ///
  /// In en, this message translates to:
  /// **'New Evolution'**
  String get dailyEvolution_newEvolutionTitle;

  /// No description provided for @dailyEvolution_noDailyEvolutionsCreatedThroughApplicationDesc.
  ///
  /// In en, this message translates to:
  /// **'No daily evolutions were created through the application'**
  String get dailyEvolution_noDailyEvolutionsCreatedThroughApplicationDesc;

  /// No description provided for @dailyEvolution_unableSearchDailyDevelopmentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to search for daily developments'**
  String get dailyEvolution_unableSearchDailyDevelopmentsDesc;

  /// No description provided for @dailyEvolution_unableStartDailyEvolutionDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to start the daily evolution'**
  String get dailyEvolution_unableStartDailyEvolutionDesc;

  /// No description provided for @dailyEvolution_dailyEvolutionSavedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Daily evolution saved successfully'**
  String get dailyEvolution_dailyEvolutionSavedSuccessfullyDesc;

  /// No description provided for @dailyEvolution_dailyEvolutionActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Evolution Actions'**
  String get dailyEvolution_dailyEvolutionActionsTitle;

  /// No description provided for @dailyEvolution_sendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get dailyEvolution_sendLabel;

  /// No description provided for @dailyEvolution_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get dailyEvolution_pauseLabel;

  /// No description provided for @dailyEvolution_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dailyEvolution_cancelLabel;

  /// No description provided for @dailyEvolution_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get dailyEvolution_continueLabel;

  /// No description provided for @dailyEvolution_openLabel.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get dailyEvolution_openLabel;

  /// No description provided for @dailyEvolution_startLabel.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get dailyEvolution_startLabel;

  /// No description provided for @dailyEvolution_terminationLabel.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get dailyEvolution_terminationLabel;

  /// No description provided for @dailyEvolution_serviceTitle.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get dailyEvolution_serviceTitle;

  /// No description provided for @dailyEvolution_serviceLabel.
  ///
  /// In en, this message translates to:
  /// **'Service:'**
  String get dailyEvolution_serviceLabel;

  /// No description provided for @dailyEvolution_observationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Observations'**
  String get dailyEvolution_observationsTitle;

  /// No description provided for @dailyEvolution_observationsLabel.
  ///
  /// In en, this message translates to:
  /// **'Observations:'**
  String get dailyEvolution_observationsLabel;

  /// No description provided for @dailyEvolution_hashCopiedClipboardDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copied to clipboard'**
  String get dailyEvolution_hashCopiedClipboardDesc;

  /// No description provided for @dailyEvolution_untilLabel.
  ///
  /// In en, this message translates to:
  /// **'{startDateTime} until {endDateTime}'**
  String dailyEvolution_untilLabel(String startDateTime, String endDateTime);

  /// No description provided for @dailyEvolution_hashLabel.
  ///
  /// In en, this message translates to:
  /// **'Hash: {hash}'**
  String dailyEvolution_hashLabel(String hash);

  /// No description provided for @dailyEvolution_startDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get dailyEvolution_startDateLabel;

  /// No description provided for @dailyEvolution_endDateLabel.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get dailyEvolution_endDateLabel;

  /// No description provided for @dailyEvolution_dailyEvolutionSituationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Evolution Situations'**
  String get dailyEvolution_dailyEvolutionSituationsTitle;

  /// No description provided for @dailyEvolution_successfullySentWebsiteDesc.
  ///
  /// In en, this message translates to:
  /// **'Successfully sent to the website'**
  String get dailyEvolution_successfullySentWebsiteDesc;

  /// No description provided for @dailyEvolution_notSendDueToConnectionProblemsDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the evolution due to internet connection problems'**
  String get dailyEvolution_notSendDueToConnectionProblemsDesc;

  /// No description provided for @dailyEvolution_pausedAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Paused and can be edited'**
  String get dailyEvolution_pausedAndCanBeEditedDesc;

  /// No description provided for @dailyEvolution_canceledAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Canceled and can be edited'**
  String get dailyEvolution_canceledAndCanBeEditedDesc;

  /// No description provided for @dailyEvolution_startedAndClosedUnexpectedlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Started and closed unexpectedly.'**
  String get dailyEvolution_startedAndClosedUnexpectedlyDesc;

  /// No description provided for @dailyEvolution_startPeriodLabel.
  ///
  /// In en, this message translates to:
  /// **'Start of Event'**
  String get dailyEvolution_startPeriodLabel;

  /// No description provided for @dailyEvolution_endPeriodLabel.
  ///
  /// In en, this message translates to:
  /// **'End of Event'**
  String get dailyEvolution_endPeriodLabel;

  /// No description provided for @dailyEvolution_statusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Status Legend'**
  String get dailyEvolution_statusSubtitle;

  /// No description provided for @dailyEvolution_uploadSessionSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Upload sessions summary'**
  String get dailyEvolution_uploadSessionSummaryTitle;

  /// No description provided for @dailyEvolution_attentionServiceFilledTitle.
  ///
  /// In en, this message translates to:
  /// **'Attention: The service field is filled in.'**
  String get dailyEvolution_attentionServiceFilledTitle;

  /// No description provided for @dailyEvolution_existingDataServiceReplacedDesc.
  ///
  /// In en, this message translates to:
  /// **'The existing data in the Service field will be replaced with the session summary data. Do you wish to continue?'**
  String get dailyEvolution_existingDataServiceReplacedDesc;

  /// No description provided for @dailyEvolution_dialogConfirmLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get dailyEvolution_dialogConfirmLabel;

  /// No description provided for @dailyEvolution_dialogCancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dailyEvolution_dialogCancelLabel;

  /// No description provided for @dailyEvolution_noServiceDatesInformed.
  ///
  /// In en, this message translates to:
  /// **'No service found for the dates informed'**
  String get dailyEvolution_noServiceDatesInformed;

  /// No description provided for @dailyEvolution_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get dailyEvolution_statusCanceledLabel;

  /// No description provided for @dailyEvolution_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get dailyEvolution_statusSentLabel;

  /// No description provided for @dailyEvolution_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get dailyEvolution_statusPausedLabel;

  /// No description provided for @dailyEvolution_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get dailyEvolution_statusStartedLabel;

  /// No description provided for @dailyEvolution_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get dailyEvolution_statusCompletedLabel;

  /// No description provided for @dailyEvolution_schedulingCodeDesc.
  ///
  /// In en, this message translates to:
  /// **'This daily evolution is linked to code appointment'**
  String get dailyEvolution_schedulingCodeDesc;

  /// No description provided for @dailyEvolution_recordAbsenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Record Absence'**
  String get dailyEvolution_recordAbsenceLabel;

  /// No description provided for @dailyEvolution_notSendDailyEvolutionDueToConnectionDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the daily evolution due to internet connection problems'**
  String get dailyEvolution_notSendDailyEvolutionDueToConnectionDesc;

  /// No description provided for @dailyEvolution_allowParentView.
  ///
  /// In en, this message translates to:
  /// **'Allow responsible to view'**
  String get dailyEvolution_allowParentView;

  /// No description provided for @dailyEvolution_notSaveDailyEvolution.
  ///
  /// In en, this message translates to:
  /// **'Unable to save daily evolution'**
  String get dailyEvolution_notSaveDailyEvolution;

  /// No description provided for @orientationTips_guidelinesTipsSavedSuccessfullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Guidelines/Tips saved successfully'**
  String get orientationTips_guidelinesTipsSavedSuccessfullyDesc;

  /// No description provided for @orientationTips_guidanceActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Guidance Actions'**
  String get orientationTips_guidanceActionsTitle;

  /// No description provided for @orientationTips_dateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get orientationTips_dateLabel;

  /// No description provided for @orientationTips_guidanceTipLabel.
  ///
  /// In en, this message translates to:
  /// **'Guidance/Tip'**
  String get orientationTips_guidanceTipLabel;

  /// No description provided for @orientationTips_newGuidanceLabel.
  ///
  /// In en, this message translates to:
  /// **'New Guidance'**
  String get orientationTips_newGuidanceLabel;

  /// No description provided for @orientationTips_noGuidanceCreatedThroughAppDesc.
  ///
  /// In en, this message translates to:
  /// **'No guidance was created through the app'**
  String get orientationTips_noGuidanceCreatedThroughAppDesc;

  /// No description provided for @orientationTips_hashCopiedClipboardDesc.
  ///
  /// In en, this message translates to:
  /// **'Hash copied to clipboard'**
  String get orientationTips_hashCopiedClipboardDesc;

  /// No description provided for @orientationTips_newGuidanceTipsLabel.
  ///
  /// In en, this message translates to:
  /// **'New Guidance/Tips'**
  String get orientationTips_newGuidanceTipsLabel;

  /// No description provided for @orientationTips_thereErrorStartingGuidanceDesc.
  ///
  /// In en, this message translates to:
  /// **'There was an error starting guidance'**
  String get orientationTips_thereErrorStartingGuidanceDesc;

  /// No description provided for @orientationTips_thereErrorLoadingInstructionsTipsDesc.
  ///
  /// In en, this message translates to:
  /// **'There was an error loading instructions/tips'**
  String get orientationTips_thereErrorLoadingInstructionsTipsDesc;

  /// No description provided for @orientationTips_sendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get orientationTips_sendLabel;

  /// No description provided for @orientationTips_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pausar'**
  String get orientationTips_pauseLabel;

  /// No description provided for @orientationTips_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get orientationTips_cancelLabel;

  /// No description provided for @orientationTips_finishLabel.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get orientationTips_finishLabel;

  /// No description provided for @orientationTips_continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get orientationTips_continueLabel;

  /// No description provided for @orientationTips_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get orientationTips_statusCanceledLabel;

  /// No description provided for @orientationTips_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get orientationTips_statusSentLabel;

  /// No description provided for @orientationTips_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get orientationTips_statusPausedLabel;

  /// No description provided for @orientationTips_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get orientationTips_statusStartedLabel;

  /// No description provided for @orientationTips_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get orientationTips_statusCompletedLabel;

  /// No description provided for @orientationTips_statusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Status Subtitle'**
  String get orientationTips_statusSubtitle;

  /// No description provided for @orientationTips_successfullySentWebsiteDesc.
  ///
  /// In en, this message translates to:
  /// **'Successfully sent to the website'**
  String get orientationTips_successfullySentWebsiteDesc;

  /// No description provided for @orientationTips_notSendDueToConnectionProblemsDesc.
  ///
  /// In en, this message translates to:
  /// **'It was not possible to send the evolution due to internet connection problems'**
  String get orientationTips_notSendDueToConnectionProblemsDesc;

  /// No description provided for @orientationTips_startedAndClosedUnexpectedlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Started and closed unexpectedly.'**
  String get orientationTips_startedAndClosedUnexpectedlyDesc;

  /// No description provided for @orientationTips_pausedAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Paused and can be edited'**
  String get orientationTips_pausedAndCanBeEditedDesc;

  /// No description provided for @orientationTips_canceledAndCanBeEditedDesc.
  ///
  /// In en, this message translates to:
  /// **'Canceled and can be edited'**
  String get orientationTips_canceledAndCanBeEditedDesc;

  /// No description provided for @history_allLabel.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get history_allLabel;

  /// No description provided for @history_sessionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get history_sessionsLabel;

  /// No description provided for @history_narrativeLabel.
  ///
  /// In en, this message translates to:
  /// **'Narratives'**
  String get history_narrativeLabel;

  /// No description provided for @history_dailyEvolutionLabel.
  ///
  /// In en, this message translates to:
  /// **'Daily Evolutions'**
  String get history_dailyEvolutionLabel;

  /// No description provided for @history_routineLabel.
  ///
  /// In en, this message translates to:
  /// **'Routines'**
  String get history_routineLabel;

  /// No description provided for @history_assessmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Assessments'**
  String get history_assessmentLabel;

  /// No description provided for @history_orderingLabel.
  ///
  /// In en, this message translates to:
  /// **'Ordering'**
  String get history_orderingLabel;

  /// No description provided for @history_patientCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Patient {patientCode}'**
  String history_patientCodeLabel(String patientCode);

  /// No description provided for @sessao_noCollectionDesc.
  ///
  /// In en, this message translates to:
  /// **'No collection was made through the application'**
  String get sessao_noCollectionDesc;

  /// No description provided for @graphics_unableFetchStatisticsDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch statistics'**
  String get graphics_unableFetchStatisticsDesc;

  /// No description provided for @graphics_tryDifferentDateContactSupportDesc.
  ///
  /// In en, this message translates to:
  /// **'Try a different date or contact support'**
  String get graphics_tryDifferentDateContactSupportDesc;

  /// No description provided for @graphics_sessionsAttendedTitle.
  ///
  /// In en, this message translates to:
  /// **'Sessions Attended'**
  String get graphics_sessionsAttendedTitle;

  /// No description provided for @graphics_programsUsedTitle.
  ///
  /// In en, this message translates to:
  /// **'Programs Used'**
  String get graphics_programsUsedTitle;

  /// No description provided for @graphics_averageAttemptsSessionTitle.
  ///
  /// In en, this message translates to:
  /// **'Average Attempts/Session'**
  String get graphics_averageAttemptsSessionTitle;

  /// No description provided for @graphics_averageIndependenceSessionTitle.
  ///
  /// In en, this message translates to:
  /// **'Average Independence/Session'**
  String get graphics_averageIndependenceSessionTitle;

  /// No description provided for @graphics_performanceSkillTitle.
  ///
  /// In en, this message translates to:
  /// **'Performance by Skill'**
  String get graphics_performanceSkillTitle;

  /// No description provided for @graphics_answeredAttemptsIndependencePercentageTitle.
  ///
  /// In en, this message translates to:
  /// **'Answered Attempts x Independence Percentage'**
  String get graphics_answeredAttemptsIndependencePercentageTitle;

  /// No description provided for @graphics_usingTargetsStimuliTitle.
  ///
  /// In en, this message translates to:
  /// **'Using Targets and Stimuli'**
  String get graphics_usingTargetsStimuliTitle;

  /// No description provided for @graphics_highestPerformingProgramsTitle.
  ///
  /// In en, this message translates to:
  /// **'Highest Performing Programs'**
  String get graphics_highestPerformingProgramsTitle;

  /// No description provided for @graphics_patientStatisticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Patient Statistics'**
  String get graphics_patientStatisticsTitle;

  /// No description provided for @graphics_initialDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Initial date'**
  String get graphics_initialDateLabel;

  /// No description provided for @graphics_finalDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Final date'**
  String get graphics_finalDateLabel;

  /// No description provided for @graphics_selectCurriculumFolderLabel.
  ///
  /// In en, this message translates to:
  /// **'Select the curriculum folder'**
  String get graphics_selectCurriculumFolderLabel;

  /// No description provided for @graphics_errorLabel.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get graphics_errorLabel;

  /// No description provided for @graphics_helpLabel.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get graphics_helpLabel;

  /// No description provided for @graphics_independenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Independence'**
  String get graphics_independenceLabel;

  /// No description provided for @graphics_answeredLabel.
  ///
  /// In en, this message translates to:
  /// **'Answered'**
  String get graphics_answeredLabel;

  /// No description provided for @graphics_estimuloInterventionLabel.
  ///
  /// In en, this message translates to:
  /// **'INTERVENTION'**
  String get graphics_estimuloInterventionLabel;

  /// No description provided for @graphics_estimuloAcquiredLabel.
  ///
  /// In en, this message translates to:
  /// **'ACQUIRED'**
  String get graphics_estimuloAcquiredLabel;

  /// No description provided for @graphics_estimuloBaselineLabel.
  ///
  /// In en, this message translates to:
  /// **'BASELINE'**
  String get graphics_estimuloBaselineLabel;

  /// No description provided for @graphics_estimuloMaintenanceLabel.
  ///
  /// In en, this message translates to:
  /// **'MAINTENANCE'**
  String get graphics_estimuloMaintenanceLabel;

  /// No description provided for @graphics_estimuloGeneralizationLabel.
  ///
  /// In en, this message translates to:
  /// **'GENERALIZATION'**
  String get graphics_estimuloGeneralizationLabel;

  /// No description provided for @graphics_estimuloUndefinedLabel.
  ///
  /// In en, this message translates to:
  /// **'ESTIMULO INDEFINIDO'**
  String get graphics_estimuloUndefinedLabel;

  /// No description provided for @graphics_title.
  ///
  /// In en, this message translates to:
  /// **'Curriculum Folder'**
  String get graphics_title;

  /// No description provided for @graphics_periodEventLabel.
  ///
  /// In en, this message translates to:
  /// **'Period of event'**
  String get graphics_periodEventLabel;

  /// No description provided for @patientHome_lastSyncLabel.
  ///
  /// In en, this message translates to:
  /// **'Last sync'**
  String get patientHome_lastSyncLabel;

  /// No description provided for @patientHome_notSynchronizedLabel.
  ///
  /// In en, this message translates to:
  /// **'not synchronized'**
  String get patientHome_notSynchronizedLabel;

  /// No description provided for @patientHome_year.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get patientHome_year;

  /// No description provided for @patientHome_month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get patientHome_month;

  /// No description provided for @patientHome_months.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get patientHome_months;

  /// No description provided for @patientHome_and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get patientHome_and;

  /// No description provided for @sessao_saveLabel.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get sessao_saveLabel;

  /// No description provided for @sessao_closeLabel.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get sessao_closeLabel;

  /// No description provided for @sessao_programInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Program Information'**
  String get sessao_programInformationTitle;

  /// No description provided for @sessao_sortTargetsLabel.
  ///
  /// In en, this message translates to:
  /// **'Sort targets by:'**
  String get sessao_sortTargetsLabel;

  /// No description provided for @sessao_sortDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get sessao_sortDescriptionLabel;

  /// No description provided for @sessao_sortOrderLabel.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get sessao_sortOrderLabel;

  /// No description provided for @sessao_sortGroupLabel.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get sessao_sortGroupLabel;

  /// No description provided for @sessao_sortAlternateLabel.
  ///
  /// In en, this message translates to:
  /// **'Alternate'**
  String get sessao_sortAlternateLabel;

  /// No description provided for @sessao_sortRandomLabel.
  ///
  /// In en, this message translates to:
  /// **'Random'**
  String get sessao_sortRandomLabel;

  /// No description provided for @sessao_confirmLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get sessao_confirmLabel;

  /// No description provided for @sessao_sessionCanceledErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'Session canceled due to error'**
  String get sessao_sessionCanceledErrorDesc;

  /// No description provided for @sessao_unableStartSessionDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to log in'**
  String get sessao_unableStartSessionDesc;

  /// No description provided for @sessao_unableUpdateSessionStatusDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to update your session status'**
  String get sessao_unableUpdateSessionStatusDesc;

  /// No description provided for @sessao_sessionActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Session Actions'**
  String get sessao_sessionActionsTitle;

  /// No description provided for @sessao_submitSessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Submit session'**
  String get sessao_submitSessionLabel;

  /// No description provided for @sessao_externalFactorsLabel.
  ///
  /// In en, this message translates to:
  /// **'External factors'**
  String get sessao_externalFactorsLabel;

  /// No description provided for @sessao_observationsLabel.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get sessao_observationsLabel;

  /// No description provided for @sessao_inappropriateBehaviorsTitle.
  ///
  /// In en, this message translates to:
  /// **'Interfering behaviors'**
  String get sessao_inappropriateBehaviorsTitle;

  /// No description provided for @sessao_reinforcersTitle.
  ///
  /// In en, this message translates to:
  /// **'Reinforcers'**
  String get sessao_reinforcersTitle;

  /// No description provided for @sessao_thereAreNoTargetsEligibleProgramDesc.
  ///
  /// In en, this message translates to:
  /// **'There are no targets eligible for this program at this time'**
  String get sessao_thereAreNoTargetsEligibleProgramDesc;

  /// No description provided for @sessao_thereAreNoProgransEligiblemDesc.
  ///
  /// In en, this message translates to:
  /// **'There are no prograns eligible'**
  String get sessao_thereAreNoProgransEligiblemDesc;

  /// No description provided for @sessao_recordAbsenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Record Absence'**
  String get sessao_recordAbsenceLabel;

  /// No description provided for @sessao_currentCriteriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Current criteria'**
  String get sessao_currentCriteriaLabel;

  /// No description provided for @sessao_selectedLabel.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get sessao_selectedLabel;

  /// No description provided for @sessao_activityLabel.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get sessao_activityLabel;

  /// No description provided for @sessao_typeHereLabel.
  ///
  /// In en, this message translates to:
  /// **'Type Here'**
  String get sessao_typeHereLabel;

  /// No description provided for @sessao_editQuantityLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit quantity'**
  String get sessao_editQuantityLabel;

  /// No description provided for @sessao_somethingWrongHappenedDesc.
  ///
  /// In en, this message translates to:
  /// **'Something wrong happened'**
  String get sessao_somethingWrongHappenedDesc;

  /// No description provided for @sessao_sessionDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Session Date'**
  String get sessao_sessionDateLabel;

  /// No description provided for @sessao_nameTitle.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get sessao_nameTitle;

  /// No description provided for @sessao_scaleTitle.
  ///
  /// In en, this message translates to:
  /// **'Scale'**
  String get sessao_scaleTitle;

  /// No description provided for @sessao_skillTitle.
  ///
  /// In en, this message translates to:
  /// **'Skill'**
  String get sessao_skillTitle;

  /// No description provided for @sessao_typeOfEducationTitle.
  ///
  /// In en, this message translates to:
  /// **'Type of Education'**
  String get sessao_typeOfEducationTitle;

  /// No description provided for @sessao_numberOfAttemptsTitle.
  ///
  /// In en, this message translates to:
  /// **'Number of Attempts'**
  String get sessao_numberOfAttemptsTitle;

  /// No description provided for @sessao_procedureTitle.
  ///
  /// In en, this message translates to:
  /// **'Procedure'**
  String get sessao_procedureTitle;

  /// No description provided for @sessao_sdTitle.
  ///
  /// In en, this message translates to:
  /// **'SD'**
  String get sessao_sdTitle;

  /// No description provided for @sessao_materialsTitle.
  ///
  /// In en, this message translates to:
  /// **'Materials'**
  String get sessao_materialsTitle;

  /// No description provided for @sessao_tipStepTitle.
  ///
  /// In en, this message translates to:
  /// **'Tip Step'**
  String get sessao_tipStepTitle;

  /// No description provided for @sessao_correctionProcedureTitle.
  ///
  /// In en, this message translates to:
  /// **'Correction Procedure'**
  String get sessao_correctionProcedureTitle;

  /// No description provided for @sessao_learningCriterionTitle.
  ///
  /// In en, this message translates to:
  /// **'Learning Criterion'**
  String get sessao_learningCriterionTitle;

  /// No description provided for @sessao_objectivesTitle.
  ///
  /// In en, this message translates to:
  /// **'Objectives'**
  String get sessao_objectivesTitle;

  /// No description provided for @sessao_sendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sessao_sendLabel;

  /// No description provided for @sessao_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get sessao_cancelLabel;

  /// No description provided for @sessao_pauseLabel.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get sessao_pauseLabel;

  /// No description provided for @sessao_searchProgramTitle.
  ///
  /// In en, this message translates to:
  /// **'Search Program'**
  String get sessao_searchProgramTitle;

  /// No description provided for @sessao_idCode.
  ///
  /// In en, this message translates to:
  /// **'Identification Code:'**
  String get sessao_idCode;

  /// No description provided for @sessao_program.
  ///
  /// In en, this message translates to:
  /// **'Program'**
  String get sessao_program;

  /// No description provided for @sessao_next_label.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get sessao_next_label;

  /// No description provided for @sessao_cancel_label.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get sessao_cancel_label;

  /// No description provided for @sessao_targets.
  ///
  /// In en, this message translates to:
  /// **'Targets'**
  String get sessao_targets;

  /// No description provided for @sessao_criteria.
  ///
  /// In en, this message translates to:
  /// **'Criteria'**
  String get sessao_criteria;

  /// No description provided for @sessao_typeTeachingTitle.
  ///
  /// In en, this message translates to:
  /// **'Type of Teaching'**
  String get sessao_typeTeachingTitle;

  /// No description provided for @sessao_numberAttemptsLabel.
  ///
  /// In en, this message translates to:
  /// **'Number of Attempts'**
  String get sessao_numberAttemptsLabel;

  /// No description provided for @sessao_scaleLabel.
  ///
  /// In en, this message translates to:
  /// **'Scale'**
  String get sessao_scaleLabel;

  /// No description provided for @sessao_categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category:'**
  String get sessao_categoryLabel;

  /// No description provided for @sessao_emptyBehaviors.
  ///
  /// In en, this message translates to:
  /// **'The apprentice does not have registered behaviors'**
  String get sessao_emptyBehaviors;

  /// No description provided for @sessao_schedulingCodeDesc.
  ///
  /// In en, this message translates to:
  /// **'This session is linked to code appointment'**
  String get sessao_schedulingCodeDesc;

  /// No description provided for @sessao_confirmDialogLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get sessao_confirmDialogLabel;

  /// No description provided for @sessao_cancelDialogLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get sessao_cancelDialogLabel;

  /// No description provided for @sessao_deleteBehaviorTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove behavior'**
  String get sessao_deleteBehaviorTitle;

  /// Behavior name as parameter
  ///
  /// In en, this message translates to:
  /// **'Wish to remove the behavior {behavior}'**
  String sessao_deleteBehaviorDesc(String behavior);

  /// No description provided for @sessao_deleteReinforcerTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove reinforcer'**
  String get sessao_deleteReinforcerTitle;

  /// Reinforcer name as parameter
  ///
  /// In en, this message translates to:
  /// **'Wish to remove the reinforcer {reinforcer}'**
  String sessao_deleteReinforcerDesc(String reinforcer);

  /// No description provided for @sessao_sheetOptions.
  ///
  /// In en, this message translates to:
  /// **'Session Options'**
  String get sessao_sheetOptions;

  /// No description provided for @sessao_noSessionCreatedDesc.
  ///
  /// In en, this message translates to:
  /// **'No Session was created through the app'**
  String get sessao_noSessionCreatedDesc;

  /// No description provided for @login_logoutLabel.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get login_logoutLabel;

  /// No description provided for @login_unableLoginDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to login'**
  String get login_unableLoginDesc;

  /// No description provided for @login_okLabel.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get login_okLabel;

  /// No description provided for @login_invalidLoginDesc.
  ///
  /// In en, this message translates to:
  /// **'Invalid login'**
  String get login_invalidLoginDesc;

  /// No description provided for @login_loginLabel.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login_loginLabel;

  /// No description provided for @login_passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get login_passwordLabel;

  /// No description provided for @login_enterLabel.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login_enterLabel;

  /// No description provided for @login_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get login_welcome;

  /// No description provided for @login_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and password below'**
  String get login_subtitle;

  /// No description provided for @login_about_title.
  ///
  /// In en, this message translates to:
  /// **'Want to know more?'**
  String get login_about_title;

  /// No description provided for @login_button.
  ///
  /// In en, this message translates to:
  /// **'About ABA+'**
  String get login_button;

  /// No description provided for @login_emailOrPasswordInvalidDesc.
  ///
  /// In en, this message translates to:
  /// **'User or password invalid'**
  String get login_emailOrPasswordInvalidDesc;

  /// No description provided for @onboarding_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the ABA+ app'**
  String get onboarding_welcome;

  /// No description provided for @onboarding_firstPage_text1.
  ///
  /// In en, this message translates to:
  /// **'Analyze the way you work, compare and have more convenience in data collection with the ABA+ app.'**
  String get onboarding_firstPage_text1;

  /// No description provided for @onboarding_firstPage_text2.
  ///
  /// In en, this message translates to:
  /// **'Replace paper with digital recording: fast, practical, and secure! Put an end to the manual and slow process of data entry on record sheets and spreadsheets.'**
  String get onboarding_firstPage_text2;

  /// No description provided for @onboarding_secondPage_title.
  ///
  /// In en, this message translates to:
  /// **'Who it`s for'**
  String get onboarding_secondPage_title;

  /// No description provided for @onboarding_secondPage_psychologists.
  ///
  /// In en, this message translates to:
  /// **'• Psychologists and psychoeducators'**
  String get onboarding_secondPage_psychologists;

  /// No description provided for @onboarding_secondPage_therapists.
  ///
  /// In en, this message translates to:
  /// **'• Occupational therapists'**
  String get onboarding_secondPage_therapists;

  /// No description provided for @onboarding_secondPage_speechtherapists.
  ///
  /// In en, this message translates to:
  /// **'• Speech therapists'**
  String get onboarding_secondPage_speechtherapists;

  /// No description provided for @onboarding_secondPage_abascientists.
  ///
  /// In en, this message translates to:
  /// **'• Professionals trained in ABA science'**
  String get onboarding_secondPage_abascientists;

  /// No description provided for @onboarding_secondPage_text.
  ///
  /// In en, this message translates to:
  /// **'We have organized the system into 4 main modules to make life easier for our professionals.'**
  String get onboarding_secondPage_text;

  /// No description provided for @onboarding_thirdPage_title.
  ///
  /// In en, this message translates to:
  /// **'Some features'**
  String get onboarding_thirdPage_title;

  /// No description provided for @onboarding_thirdPage_patients_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Apprentice'**
  String get onboarding_thirdPage_patients_subtitle;

  /// No description provided for @onboarding_thirdPage_patientsarea_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Apprentice`s Area'**
  String get onboarding_thirdPage_patientsarea_subtitle;

  /// No description provided for @onboarding_thirdPage_session_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get onboarding_thirdPage_session_subtitle;

  /// No description provided for @onboarding_thirdPage_avaliation_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Evaluation'**
  String get onboarding_thirdPage_avaliation_subtitle;

  /// No description provided for @onboarding_thirdPage_button.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboarding_thirdPage_button;

  /// No description provided for @checklist_checklistTitle.
  ///
  /// In en, this message translates to:
  /// **'Checklist'**
  String get checklist_checklistTitle;

  /// No description provided for @checklist_modelsLabel.
  ///
  /// In en, this message translates to:
  /// **'Models'**
  String get checklist_modelsLabel;

  /// No description provided for @checklist_completedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get checklist_completedLabel;

  /// No description provided for @checklist_searchModelsLabel.
  ///
  /// In en, this message translates to:
  /// **'Search for template'**
  String get checklist_searchModelsLabel;

  /// No description provided for @checklist_searchChecklistLabel.
  ///
  /// In en, this message translates to:
  /// **'Search for checklist'**
  String get checklist_searchChecklistLabel;

  /// No description provided for @checklist_unableLoadModelsDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to load templates'**
  String get checklist_unableLoadModelsDesc;

  /// No description provided for @checklist_tryAgainDesc.
  ///
  /// In en, this message translates to:
  /// **'Please try again or contact support'**
  String get checklist_tryAgainDesc;

  /// No description provided for @checklist_noChecklistFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'No CheckList found'**
  String get checklist_noChecklistFoundDesc;

  /// No description provided for @checklist_newChecklistDesc.
  ///
  /// In en, this message translates to:
  /// **'Create a new checklist by selecting a template'**
  String get checklist_newChecklistDesc;

  /// No description provided for @checklist_noModelsFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'No model found'**
  String get checklist_noModelsFoundDesc;

  /// No description provided for @checklist_newModelDesc.
  ///
  /// In en, this message translates to:
  /// **'Create a new model in the web platform'**
  String get checklist_newModelDesc;

  /// No description provided for @alvos_interventionLabel.
  ///
  /// In en, this message translates to:
  /// **'INTERVENTION'**
  String get alvos_interventionLabel;

  /// No description provided for @alvos_acquiredLabel.
  ///
  /// In en, this message translates to:
  /// **'ACQUIRED'**
  String get alvos_acquiredLabel;

  /// No description provided for @alvos_baselineLabel.
  ///
  /// In en, this message translates to:
  /// **'BASELINE'**
  String get alvos_baselineLabel;

  /// No description provided for @alvos_maintenanceLabel.
  ///
  /// In en, this message translates to:
  /// **'MAINTENANCE'**
  String get alvos_maintenanceLabel;

  /// No description provided for @alvos_generalizationLabel.
  ///
  /// In en, this message translates to:
  /// **'GENERALIZATION'**
  String get alvos_generalizationLabel;

  /// No description provided for @criterios_grauMoreIntrusive.
  ///
  /// In en, this message translates to:
  /// **'MORE INTRUSIVE'**
  String get criterios_grauMoreIntrusive;

  /// No description provided for @criterios_grauLessIntrusive.
  ///
  /// In en, this message translates to:
  /// **'LESS INTRUSIVE'**
  String get criterios_grauLessIntrusive;

  /// No description provided for @criterios_grauError.
  ///
  /// In en, this message translates to:
  /// **'ERROR'**
  String get criterios_grauError;

  /// No description provided for @criterios_grauIndependent.
  ///
  /// In en, this message translates to:
  /// **'INDEPENDENT'**
  String get criterios_grauIndependent;

  /// No description provided for @criterios_grauIntrusivePartial.
  ///
  /// In en, this message translates to:
  /// **'INTRUSIVE PARTIAL'**
  String get criterios_grauIntrusivePartial;

  /// No description provided for @criterios_grauOmission.
  ///
  /// In en, this message translates to:
  /// **'OMISSION'**
  String get criterios_grauOmission;

  /// No description provided for @programas_ensinoNaturalisticTeaching.
  ///
  /// In en, this message translates to:
  /// **'Naturalistic Teaching'**
  String get programas_ensinoNaturalisticTeaching;

  /// No description provided for @programas_ensinoDiscreteStructured.
  ///
  /// In en, this message translates to:
  /// **'Discrete Trial - Structured'**
  String get programas_ensinoDiscreteStructured;

  /// No description provided for @programas_ensinoDiscreteInterleaved.
  ///
  /// In en, this message translates to:
  /// **'Discrete Trial - Interleaved'**
  String get programas_ensinoDiscreteInterleaved;

  /// No description provided for @programas_ensinoTaskAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Task Analysis'**
  String get programas_ensinoTaskAnalysis;

  /// No description provided for @programas_ensinoFrequency.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get programas_ensinoFrequency;

  /// No description provided for @programas_ensinoDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get programas_ensinoDuration;

  /// No description provided for @inAppUpdate_mandatoryUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Mandatory update'**
  String get inAppUpdate_mandatoryUpdateDesc;

  /// No description provided for @inAppUpdate_availableUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Update available!'**
  String get inAppUpdate_availableUpdateDesc;

  /// No description provided for @inAppUpdate_proceedToUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Proceed to app update?'**
  String get inAppUpdate_proceedToUpdateDesc;

  /// No description provided for @inAppUpdate_wishToUpdateToNewestVersionDesc.
  ///
  /// In en, this message translates to:
  /// **'Do you wish to update the app to the newest version?'**
  String get inAppUpdate_wishToUpdateToNewestVersionDesc;

  /// No description provided for @inAppUpdate_yesLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get inAppUpdate_yesLabel;

  /// No description provided for @inAppUpdate_noLabel.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get inAppUpdate_noLabel;

  /// No description provided for @abaStorage_createdInLabel.
  ///
  /// In en, this message translates to:
  /// **'Created in '**
  String get abaStorage_createdInLabel;

  /// No description provided for @abaStorage_sizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Size '**
  String get abaStorage_sizeLabel;

  /// No description provided for @abaStorage_durationLabel.
  ///
  /// In en, this message translates to:
  /// **'Duration '**
  String get abaStorage_durationLabel;

  /// No description provided for @abaStorage_removeLabel.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get abaStorage_removeLabel;

  /// No description provided for @abaStorage_closeLabel.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get abaStorage_closeLabel;

  /// No description provided for @abaStorage_deleteAttachmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete attachment'**
  String get abaStorage_deleteAttachmentLabel;

  /// No description provided for @abaStorage_deleteAttachmentConfirmationDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the attachment?'**
  String get abaStorage_deleteAttachmentConfirmationDesc;

  /// No description provided for @abaStorage_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get abaStorage_cancelLabel;

  /// No description provided for @abaStorage_deleteLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get abaStorage_deleteLabel;

  /// No description provided for @abaStorage_fileNotFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'File not found'**
  String get abaStorage_fileNotFoundDesc;

  /// No description provided for @abaStorage_fileTooLargeDesc.
  ///
  /// In en, this message translates to:
  /// **'File too large'**
  String get abaStorage_fileTooLargeDesc;

  /// No description provided for @abaStorage_unableSaveFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Could not save file'**
  String get abaStorage_unableSaveFileDesc;

  /// No description provided for @abaStorage_unableDownloadFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to download file'**
  String get abaStorage_unableDownloadFileDesc;

  /// No description provided for @abaStorage_unableGetAbaFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to load files'**
  String get abaStorage_unableGetAbaFilesDesc;

  /// No description provided for @abaStorage_unableDeleteFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Could not delete file'**
  String get abaStorage_unableDeleteFileDesc;

  /// No description provided for @abaStorage_unableSyncFilesPendingDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to sync pending files'**
  String get abaStorage_unableSyncFilesPendingDesc;

  /// No description provided for @abaStorage_noNetworkDesc.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get abaStorage_noNetworkDesc;

  /// No description provided for @abaStorage_unableSyncFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to sync files'**
  String get abaStorage_unableSyncFilesDesc;

  /// No description provided for @abaStorage_unavailableFile.
  ///
  /// In en, this message translates to:
  /// **'File not available'**
  String get abaStorage_unavailableFile;

  /// No description provided for @core_systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get core_systemDefault;

  /// No description provided for @core_scheduleLabel.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get core_scheduleLabel;

  /// No description provided for @core_apprenticesLabel.
  ///
  /// In en, this message translates to:
  /// **'Apprentices'**
  String get core_apprenticesLabel;

  /// No description provided for @core_historyLabel.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get core_historyLabel;

  /// No description provided for @core_sessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get core_sessionLabel;

  /// No description provided for @core_abcNarrativeLabel.
  ///
  /// In en, this message translates to:
  /// **'ABC Narrative'**
  String get core_abcNarrativeLabel;

  /// No description provided for @core_dailyEvolutionLabel.
  ///
  /// In en, this message translates to:
  /// **'Daily Evolution'**
  String get core_dailyEvolutionLabel;

  /// No description provided for @core_routineRecordsLabel.
  ///
  /// In en, this message translates to:
  /// **'Routine Records'**
  String get core_routineRecordsLabel;

  /// No description provided for @core_guidanceTipsLabel.
  ///
  /// In en, this message translates to:
  /// **'Guidance/Tips'**
  String get core_guidanceTipsLabel;

  /// No description provided for @core_graphicsLabel.
  ///
  /// In en, this message translates to:
  /// **'Graphics'**
  String get core_graphicsLabel;

  /// No description provided for @core_assessmentsLabel.
  ///
  /// In en, this message translates to:
  /// **'Assessments'**
  String get core_assessmentsLabel;

  /// No description provided for @core_no_internet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get core_no_internet;

  /// No description provided for @libDs_holdRecordReleaseFinishDesc.
  ///
  /// In en, this message translates to:
  /// **'To use transcription, press and hold the button and release after 2 seconds when you finish speaking to confirm the recording'**
  String get libDs_holdRecordReleaseFinishDesc;

  /// No description provided for @libDs_unableUseVoiceFeatureDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to use voice feature'**
  String get libDs_unableUseVoiceFeatureDesc;

  /// No description provided for @libDs_localeIdLabel.
  ///
  /// In en, this message translates to:
  /// **'en-US'**
  String get libDs_localeIdLabel;

  /// No description provided for @libDs_chooseInitialDate.
  ///
  /// In en, this message translates to:
  /// **'Choose the initial date'**
  String get libDs_chooseInitialDate;

  /// No description provided for @libDs_chooseDuration.
  ///
  /// In en, this message translates to:
  /// **'Choose the event duration'**
  String get libDs_chooseDuration;

  /// No description provided for @libDs_saveSelectedLabel.
  ///
  /// In en, this message translates to:
  /// **'Save selected'**
  String get libDs_saveSelectedLabel;

  /// No description provided for @libDs_cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get libDs_cancelLabel;

  /// No description provided for @libDs_archivesLabel.
  ///
  /// In en, this message translates to:
  /// **'Archives'**
  String get libDs_archivesLabel;

  /// No description provided for @libDs_noImageOrVideoDesc.
  ///
  /// In en, this message translates to:
  /// **'No images or videos for now...'**
  String get libDs_noImageOrVideoDesc;

  /// No description provided for @libDs_attachmentsLabel.
  ///
  /// In en, this message translates to:
  /// **'{itens} of {maxItens} attachments'**
  String libDs_attachmentsLabel(int itens, int maxItens);

  /// No description provided for @libDs_attachFilesLabel.
  ///
  /// In en, this message translates to:
  /// **'Attach files'**
  String get libDs_attachFilesLabel;

  /// No description provided for @libDs_takePhotoOrRecordVideoLabel.
  ///
  /// In en, this message translates to:
  /// **'Take a photo or record a video'**
  String get libDs_takePhotoOrRecordVideoLabel;

  /// No description provided for @libDs_attachImageVideoGalleryLabel.
  ///
  /// In en, this message translates to:
  /// **'Attach image or video from your gallery'**
  String get libDs_attachImageVideoGalleryLabel;

  /// No description provided for @libDs_attachDocumentsGalleryLabel.
  ///
  /// In en, this message translates to:
  /// **'Attach documents from your gallery'**
  String get libDs_attachDocumentsGalleryLabel;

  /// No description provided for @libDs_unableInitializeFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Unable to initialize files'**
  String get libDs_unableInitializeFilesDesc;

  /// No description provided for @libDs_allowCameraLabel.
  ///
  /// In en, this message translates to:
  /// **'Allow camera use'**
  String get libDs_allowCameraLabel;

  /// No description provided for @libDs_allowMicrophoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Allow audio recording'**
  String get libDs_allowMicrophoneLabel;

  /// No description provided for @libDs_permissionAccessCameraDesc.
  ///
  /// In en, this message translates to:
  /// **'This function needs permission to access the camera.'**
  String get libDs_permissionAccessCameraDesc;

  /// No description provided for @libDs_syncPendingFilesTitle.
  ///
  /// In en, this message translates to:
  /// **'Synchronizing pending files'**
  String get libDs_syncPendingFilesTitle;

  /// No description provided for @libDs_uploadProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'{uploaded} of {total} files synced: {progress}%'**
  String libDs_uploadProgressLabel(int uploaded, int total, int progress);

  /// No description provided for @libDs_allFilesSyncedDesc.
  ///
  /// In en, this message translates to:
  /// **'All files have been synced'**
  String get libDs_allFilesSyncedDesc;

  /// No description provided for @libDs_waitProcessingFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Please wait while processing files...'**
  String get libDs_waitProcessingFilesDesc;

  /// No description provided for @libDs_selectedFilesReachedDesc.
  ///
  /// In en, this message translates to:
  /// **'Selected files limit reached'**
  String get libDs_selectedFilesReachedDesc;

  /// No description provided for @libDs_selectedPhotosOrVideosReachedDesc.
  ///
  /// In en, this message translates to:
  /// **'Media limit reached'**
  String get libDs_selectedPhotosOrVideosReachedDesc;

  /// No description provided for @libDs_webCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Web code:'**
  String get libDs_webCodeLabel;

  /// No description provided for @libDs_dateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get libDs_dateLabel;

  /// No description provided for @libDs_hashLabel.
  ///
  /// In en, this message translates to:
  /// **'Hash: {hash}'**
  String libDs_hashLabel(String hash);

  /// No description provided for @libDs_statusCanceledLabel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get libDs_statusCanceledLabel;

  /// No description provided for @libDs_statusSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get libDs_statusSentLabel;

  /// No description provided for @libDs_statusPausedLabel.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get libDs_statusPausedLabel;

  /// No description provided for @libDs_statusStartedLabel.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get libDs_statusStartedLabel;

  /// No description provided for @libDs_statusCompletedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get libDs_statusCompletedLabel;

  /// No description provided for @libDs_tempFileLabel.
  ///
  /// In en, this message translates to:
  /// **'The file will be saved in the cloud until the selected item is sent, or for up to 30 days.'**
  String get libDs_tempFileLabel;

  /// No description provided for @libDs_notUpdatedLabel.
  ///
  /// In en, this message translates to:
  /// **'Not updated'**
  String get libDs_notUpdatedLabel;

  /// No description provided for @libDs_updatedAtDesc.
  ///
  /// In en, this message translates to:
  /// **'Updated at: {updatedAt}'**
  String libDs_updatedAtDesc(String updatedAt);

  /// No description provided for @libDs_codeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get libDs_codeLabel;

  /// No description provided for @libDs_descriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get libDs_descriptionLabel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
