// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_logoutLabel => 'Log out';

  @override
  String get home_startLabel => 'Start';

  @override
  String get home_settingsLabel => 'Settings';

  @override
  String get home_patientsLabel => 'Patients';

  @override
  String get home_sessionsLabel => 'Sessions';

  @override
  String get home_scheduleLabel => 'Schedule';

  @override
  String get home_updateMultiplePatientsDesc => 'Update multiple patients';

  @override
  String get home_unableStartDesc => 'Unable to start';

  @override
  String get home_browserSupportLabel => 'Browser support';

  @override
  String get home_whastappSuportLabel => 'WhatsApp support';

  @override
  String get home_syncSessionsLabel => 'Sync Sessions';

  @override
  String get home_unableSendSessionDesc => 'Unable to send session';

  @override
  String get home_patientDataSynchronizedSuccessfullyDesc =>
      'Patient data synchronized successfully';

  @override
  String get home_clickHoldPatientStartSelectionClickDesc =>
      'Click and hold on a patient to start the selection, and click again to select the desired patients';

  @override
  String get home_finishUpdateDesc =>
      'To finish and update, click the update button';

  @override
  String get home_noPatientsFoundDesc => 'No patients found';

  @override
  String get home_accessOtherDataDesc =>
      'To access other data, access the web platform';

  @override
  String get home_unableSearchSessionListDesc =>
      'Unable to search session list.';

  @override
  String get home_checkYourInternetConnectionTryAgainDesc =>
      'Check your internet connection and try again';

  @override
  String get home_hashCopiedClipboardDesc => 'Hash copied to clipboard';

  @override
  String get home_apprenticeAbsentLabel => 'Apprentice absent';

  @override
  String get home_errorLoadingPatientsListDesc =>
      'Error loading patient list. Please try again';

  @override
  String get home_drawer_footer => 'Made with ❤️ by the ABA+ team';

  @override
  String get home_drawer_error_message => 'Error on opening the support page';

  @override
  String get home_userLabel => 'User:';

  @override
  String get home_aboutLabel => 'About';

  @override
  String get home_lowMemoryLabel =>
      'Memory is running out. This may affect your use of the app.';

  @override
  String get home_lowStorageLabel =>
      'Storage is running out. This may affect your use of the app.';

  @override
  String get splash_somethingWrongDesc => 'Oops... something went wrong';

  @override
  String get splash_tryAgainLabel => 'Try again';

  @override
  String get schedule_typeAppointmentAssessmentLabel => 'Assessment';

  @override
  String get schedule_typeAppointmentDailyEvolutionLabel => 'Daily evolution';

  @override
  String get schedule_typeAppointmentSessionLabel => 'Session';

  @override
  String get schedule_typeAppointmentSupervisionLabel => 'Supervision';

  @override
  String get schedule_typeAppointmentSchoolSupportLabel => 'School support';

  @override
  String get schedule_typeAppointmentVisitLabel => 'Visit';

  @override
  String get schedule_typeAppointmentPlanningLabel => 'Planning';

  @override
  String get schedule_typeAppointmentUndefinedLabel => 'Undefined type';

  @override
  String get schedule_typeSituationStartedLabel => 'Started';

  @override
  String get schedule_typeSituationPendingLabel => 'Pending';

  @override
  String get schedule_typeSituationScheduledLabel => 'Scheduled';

  @override
  String get schedule_typeSituationCanceledLabel => 'Canceled';

  @override
  String get schedule_typeSituationAbsenceLabel => 'Absence';

  @override
  String get schedule_typeSituationFinishedLabel => 'Finished';

  @override
  String get schedule_typeSituationUndefinedLabel => 'Undefinite situation';

  @override
  String get schedule_typeFilterTodayLabel => 'Today';

  @override
  String get schedule_typeFilterNextSevenDaysLabel => 'Next 7 days';

  @override
  String get schedule_typeFilterLastSevenDaysLabel => 'Last 7 days';

  @override
  String get schedule_emptyAppointmentTypeFilterDesc =>
      'No appointments for the selected option';

  @override
  String get schedule_failureScheduleTitle =>
      'Unable to fetch appointment list';

  @override
  String get schedule_failureScheduleDesc =>
      'Please check your internet connection and try again';

  @override
  String get schedule_emptyScheduleTitle =>
      'There are no appointments in the last 7 days';

  @override
  String get schedule_emptyScheduleDesc =>
      'To access older appointments, access the web platform';

  @override
  String get schedule_failureModalStartServiceDesc => 'Unable to start service';

  @override
  String get schedule_codeModalTitle => 'Code';

  @override
  String get schedule_statusModalTitle => 'Status';

  @override
  String get schedule_typeServiceModalTitle => 'Type of service';

  @override
  String get schedule_scheduleDateModalTitle => 'Scheduled date';

  @override
  String get schedule_professionalModalTitle => 'Professional';

  @override
  String get schedule_serviceLocationModalTitle => 'Service Location';

  @override
  String get schedule_observationsModalTitle => 'Observations';

  @override
  String get schedule_startServiceLabel => 'Start service';

  @override
  String get schedule_searchApprenticeLabel => 'Search Apprentice';

  @override
  String get abcNarrative_finishLabel => 'Finish';

  @override
  String get abcNarrative_pauseLabel => 'Pause';

  @override
  String get abcNarrative_cancelLabel => 'Cancel';

  @override
  String abcNarrative_abcNarrativeTitle(int plural) {
    String _temp0 = intl.Intl.pluralLogic(
      plural,
      locale: localeName,
      other: 'ABC Narrative',
      one: 'ABC Narratives',
      zero: 'ABC Narrative',
    );
    return '$_temp0';
  }

  @override
  String get abcNarrative_hashCopiedDesc => 'Hash copied to clipboard';

  @override
  String get abcNarrative_eventDateLabel => 'Event\'\'s Date';

  @override
  String get abcNarrative_durationLabel => 'Duration:';

  @override
  String get abcNarrative_incidentLocationLabel => 'Incident\'\'s Location:';

  @override
  String get abcNarrative_intensityDegreeLabel => 'Degree of Intensity:';

  @override
  String get abcNarrative_backgroundLabel => 'A - Background:';

  @override
  String get abcNarrative_behaviorLabel => 'B - Behavior:';

  @override
  String get abcNarrative_consequencesLabel => 'C - Consequences:';

  @override
  String get abcNarrative_continueLabel => 'Continue';

  @override
  String get abcNarrative_openLabel => 'Open';

  @override
  String get abcNarrative_sendLabel => 'Send';

  @override
  String get abcNarrative_unableCreateAbcNarrativeDesc =>
      'It was not possible to start the creation of the abc narrative';

  @override
  String get abcNarrative_newAbcNarrativeLabel => 'New ABC Narrative';

  @override
  String get abcNarrative_noAbcNarrativeCreatedDesc =>
      'No ABC narrative was created through the app';

  @override
  String get abcNarrative_unableStartAbcNarrativeListDesc =>
      'Unable to start abc narrative list';

  @override
  String get abcNarrative_newNarrativeLabel => 'New Narrative';

  @override
  String get abcNarrative_abcNarrativeSavedSuccessfullyDesc =>
      'ABC Narrative saved successfully';

  @override
  String get abcNarrative_abcNarrativeActionsTitle => 'ABC Narrative Actions';

  @override
  String get abcNarrative_dateTimeLabel => 'Date and Time:';

  @override
  String get abcNarrative_chooseLocation => 'Choose the location';

  @override
  String get abcNarrative_successfullySentWebsiteDesc =>
      'Successfully sent to the website';

  @override
  String get abcNarrative_notSendDueToConnectionProblemsDesc =>
      'It was not possible to send the evolution due to internet connection problems';

  @override
  String get abcNarrative_startedAndClosedUnexpectedlyDesc =>
      'Started and closed unexpectedly.';

  @override
  String get abcNarrative_pausedAndCanBeEditedDesc =>
      'Paused and can be edited';

  @override
  String get abcNarrative_statusCanceledLabel => 'Canceled';

  @override
  String get abcNarrative_statusSentLabel => 'Sent';

  @override
  String get abcNarrative_statusPausedLabel => 'Paused';

  @override
  String get abcNarrative_statusStartedLabel => 'Started';

  @override
  String get abcNarrative_statusCompletedLabel => 'Completed';

  @override
  String get abcNarrative_notSendNarrativeDueToConnectionDesc =>
      'It was not possible to send the ABC narrative due to internet connection problems';

  @override
  String get patientsList_dataSyncWithSuccessDesc =>
      'Patient data synchronyzed successfully';

  @override
  String get patientsList_searchApprenticeLabel => 'Search Apprentice';

  @override
  String get patientsList_lastSyncLabel => 'Last sync';

  @override
  String get patientsList_notSynchronizedLabel => 'not synchronized';

  @override
  String get config_aboutLabel => 'About';

  @override
  String get config_appVersionLabel => 'App Version';

  @override
  String get config_userLabel => 'User:';

  @override
  String get config_userProfileLabel => 'User\'\'s profile:';

  @override
  String get config_deviceHashCopiedToClipboardDesc =>
      'Device\'\'s Hash copied to clipboard';

  @override
  String get config_deviceHashLabel => 'Device\'\'s Hash:';

  @override
  String get config_hashUnavailableDesc => 'Hash unavailable';

  @override
  String get config_unableGetDeviceDataDesc => 'Unable to get data from device';

  @override
  String get config_contactSupport => 'Contact Support';

  @override
  String get config_language => 'Language';

  @override
  String avaliacoes_assessmentTitle(int plural) {
    String _temp0 = intl.Intl.pluralLogic(
      plural,
      locale: localeName,
      one: 'Avaliações',
      zero: 'Avaliação',
      other: 'Avaliações',
    );
    return '$_temp0';
  }

  @override
  String get avaliacoes_somethingWrongHappenedDesc =>
      'Something wrong happened';

  @override
  String get avaliacoes_unableToSyncDesc => 'Unable to sync assessment';

  @override
  String get avaliacoes_unableToSearchDesc =>
      'We are unable to search for assessments at this time';

  @override
  String get avaliacoes_noResponseOptionsDesc =>
      'This test does not have response options. Please access the web platform and register';

  @override
  String get avaliacoes_categoryLabel => 'Category:';

  @override
  String get avaliacoes_itemLabel => 'Item:';

  @override
  String get avaliacoes_milestoneLabel => 'Milestone:';

  @override
  String get avaliacoes_criterionLabel => 'Criterion:';

  @override
  String get avaliacoes_understoodLabel => 'Understood';

  @override
  String get avaliacoes_assessmentPausedTitle => 'Assessment Paused';

  @override
  String avaliacoes_assessmentCreatedOnDesc(String date) {
    return 'There is an assessment created on $date';
  }

  @override
  String get avaliacoes_finishAndStartAgainLabel => 'Finish and start again';

  @override
  String get avaliacoes_continueLabel => 'Continue';

  @override
  String get avaliacoes_cancelLabel => 'Cancel';

  @override
  String get avaliacoes_pauseLabel => 'Pause';

  @override
  String get avaliacoes_finishLabel => 'Finish';

  @override
  String get avaliacoes_pauseAssessmentLabel => 'Pause Assessment';

  @override
  String get avaliacoes_cancelAssessmentLabel => 'Cancel Assessment';

  @override
  String get avaliacoes_finishAssessmentLabel => 'Finish Assessment';

  @override
  String avaliacoes_wishToTakeActionDesc(String action) {
    return 'Are you sure you wish to $action the assessment?';
  }

  @override
  String get avaliacoes_wishToExitTitle =>
      'Do you wish to exit the assessment?';

  @override
  String get avaliacoes_chooseActionOrReturnDesc =>
      'Choose one of the closing actions or return to the assessment';

  @override
  String get avaliacoes_recordAbsenceLabel => 'Record Absence';

  @override
  String get avaliacoes_observationLabel => 'Observation';

  @override
  String get avaliacoes_deleteObjectiveLabel => 'Delete objective';

  @override
  String get avaliacoes_wishToDeleteObjectiveDesc =>
      'Are you sure you wish to delete the objective?';

  @override
  String get avaliacoes_deleteLabel => 'Delete';

  @override
  String get avaliacoes_skillLabel => 'Skill';

  @override
  String get avaliacoes_nameLabel => 'Name:';

  @override
  String get avaliacoes_codeLabel => 'Código:';

  @override
  String get avaliacoes_orderLabel => 'Ordem:';

  @override
  String get avaliacoes_noAssessmentPerformedDesc =>
      'You have no assessment performed on this device';

  @override
  String get avaliacoes_unableToStartAssessmentDesc =>
      'Unable to start the assessment. Please try again or contact support';

  @override
  String get avaliacoes_unableToLoadAssessmentDesc =>
      'Unable to load the assessment. Please try again or contact support';

  @override
  String get avaliacoes_assessmentHasNoObjectivesDesc =>
      'The assessment has no objectives';

  @override
  String get avaliacoes_unableToLoadObjectivesDesc =>
      'Unable to load objectives. Please try again';

  @override
  String get avaliacoes_hashCopiedDesc =>
      'Hash copiado para a área de transferência';

  @override
  String avaliacoes_statusLabel(String status) {
    return 'Status: $status';
  }

  @override
  String get avaliacoes_startLabel => 'Start:';

  @override
  String get avaliacoes_endLabel => 'End:';

  @override
  String get avaliacoes_pauseColonLabel => 'Pause:';

  @override
  String get avaliacoes_submissionLabel => 'Submission:';

  @override
  String get avaliacoes_hashLabel => 'Hash:';

  @override
  String get avaliacoes_observationColonLabel => 'Observation:';

  @override
  String get avaliacoes_assessmentNotSubmittedDesc =>
      'The assessment was not submitted due to data inconsistency. Please contact support';

  @override
  String get avaliacoes_selectLevelLabel => 'Select a level';

  @override
  String get avaliacoes_notUpdatedLabel => 'Not updated';

  @override
  String avaliacoes_updatedAtDesc(String updatedAt) {
    return 'Updated at: $updatedAt';
  }

  @override
  String get avaliacoes_typeLabel => 'Type:';

  @override
  String get avaliacoes_levelLabel => 'Level:';

  @override
  String get avaliacoes_levelsLabel => 'Levels';

  @override
  String get avaliacoes_testsLabel => 'Tests';

  @override
  String get avaliacoes_skillsAndLevelsLabel => 'Skills and levels';

  @override
  String get avaliacoes_skillsAndTestsLabel => 'Skills and tests';

  @override
  String get avaliacoes_levelsAndTestsLabel => 'Levels and tests';

  @override
  String get avaliacoes_objectiveLabel => 'Objective:';

  @override
  String get avaliacoes_editLabel => 'Edit';

  @override
  String avaliacoes_unableToActionAssessmentDesc(String action) {
    return 'Unable to $action the assessment';
  }

  @override
  String get avaliacoes_canceledLabel => 'canceled';

  @override
  String get avaliacoes_pausedLabel => 'paused';

  @override
  String get avaliacoes_finishedLabel => 'finished';

  @override
  String avaliacoes_assessmentActionSuccessfullyDesc(String action) {
    return 'Assessment $action successfully';
  }

  @override
  String get avaliacoes_errorSavingResponseDesc => 'Error saving response';

  @override
  String get avaliacoes_manageObjectivesLabel => 'Manage objectives';

  @override
  String get avaliacoes_somethingWentWrongDesc => 'Something went wrong';

  @override
  String get avaliacoes_unableToSyncAssessmentDesc =>
      'Unable to synchronize the assessment';

  @override
  String get avaliacoes_selectTheLevelLabel => 'Select the level';

  @override
  String get avaliacoes_selectTheSkillLabel => 'Select the skill';

  @override
  String get avaliacoes_insertTheObjectiveLabel => 'Insert the objective';

  @override
  String get avaliacoes_createObjectiveLabel => 'Create Objective';

  @override
  String get avaliacoes_levelTitle => 'Level';

  @override
  String get avaliacoes_objectiveTitle => 'Objective';

  @override
  String get avaliacoes_objectiveCreatedSuccessfullyDesc =>
      'Objetivo criado com sucesso';

  @override
  String get avaliacoes_unableCreateObjectiveDesc =>
      'Unable to create objective';

  @override
  String get avaliacoes_objectiveSuccessfullyEditedDesc =>
      'Objective successfully edited';

  @override
  String get avaliacoes_unableEditObjectiveDesc => 'Unable to edit objective';

  @override
  String get avaliacoes_objectiveSuccessfullyDeletedDesc =>
      'Objective successfully deleted';

  @override
  String get avaliacoes_unableDeleteObjectiveDesc =>
      'Unable to delete objective';

  @override
  String get avaliacoes_unableCompletePausedAssessmentDesc =>
      'Unable to complete the paused assessment';

  @override
  String get avaliacoes_protocolsTitle => 'Protocols';

  @override
  String get avaliacoes_completedTitle => 'Completed';

  @override
  String get avaliacoes_searchSkillsTitle => 'Search skills';

  @override
  String get avaliacoes_assessmentDateTitle => 'Assessment Date';

  @override
  String get avaliacoes_dialogSaveLabel => 'Save';

  @override
  String get avaliacoes_dialogCloseLabel => 'Close';

  @override
  String get avaliacoes_intervieweesTitle => 'Interviewed';

  @override
  String get avaliacoes_intervieweesParentsLabel => 'Parents Interviewed';

  @override
  String get avaliacoes_intervieweesOutherLabel => 'Other Interviewees';

  @override
  String get avaliacoes_commentsTitle => 'Comments';

  @override
  String get avaliacoes_thereAreNoSkilEligibleLevelDesc =>
      'There are no skill eligible for this level at this time';

  @override
  String get avaliacoes_thereAreNoTestsForSkillEligible =>
      'No tests were found for this skill.';

  @override
  String get avaliacoes_statusCanceledLabel => 'Canceled';

  @override
  String get avaliacoes_statusSentLabel => 'Sent';

  @override
  String get avaliacoes_statusPausedLabel => 'Paused';

  @override
  String get avaliacoes_statusStartedLabel => 'Started';

  @override
  String get avaliacoes_statusCompletedLabel => 'Completed';

  @override
  String get avaliacoes_schedulingCodeDesc =>
      'This assessment is linked to code appointment';

  @override
  String get avaliacoes_aditionalInfoPlaceholder =>
      'Enter additional information';

  @override
  String avaliacoes_unableToStartAssessmentErrorSpecifiedDesc(String error) {
    return 'Unable to start the assessment. Please access the web platform and check the $error list for this protocol.';
  }

  @override
  String get avaliacoes_unableToSearchAssessmentsDesc =>
      'Unable to fetch assessments at this time, please try again or contact support.';

  @override
  String get avaliacoes_unableToLoadAssessmentsDesc =>
      'Something went wrong with the company you are accessing, please log out and log in again or contact support.';

  @override
  String get pastaCurricular_title => 'Curriculum Folder';

  @override
  String get pastaCurricular_curriculumFolderSelectionTitle =>
      'Curriculum Folder Selection';

  @override
  String get pastaCurricular_apprenticeDataSynchronizedSuccessfullyDesc =>
      'Apprentice data synchronized successfully';

  @override
  String get pastaCurricular_apprenticeDataSyncedWaitSyncAgainDesc =>
      'Apprentice data synced, wait 5 minutes to sync again';

  @override
  String
  get pastaCurricular_theprogramsFolderEligibleTargetsStimuliDisplayingInformationDesc =>
      'The programs in the folder have no eligible targets/stimuli for displaying information';

  @override
  String get pastaCurricular_checkTargetsStimuliWebSystemDesc =>
      'Check targets/stimuli in the web system';

  @override
  String get pastaCurricular_thereProblemLoadingCurriculumFolderDetailsDesc =>
      'There was a problem loading curriculum folder details';

  @override
  String get pastaCurricular_logOutLogBackNewSearchDesc =>
      'Log out and log back in for a new search.';

  @override
  String
  get pastaCurricular_theApprenticeSynchronizedFoldersCannotSearchedDesc =>
      'The apprentice has not yet been synchronized or the folders cannot be searched';

  @override
  String get pastaCurricular_pullDownRefreshApprenticeFoldersDesc =>
      'Pull down to refresh that apprentice\'\'s folders.';

  @override
  String get pastaCurricular_numberProgramsLabel => 'Number of Programs';

  @override
  String get pastaCurricular_seeDetailsLabel => 'See details';

  @override
  String get pastaCurricular_beginSessionLabel => 'Begin session';

  @override
  String get pastaCurricular_targetInformationLabel => 'Target information';

  @override
  String get pastaCurricular_nameLabel => 'Name';

  @override
  String get pastaCurricular_categoryLabel => 'Category';

  @override
  String get pastaCurricular_whatYouWantDoLabel => 'What do you want to do?';

  @override
  String pastaCurricular_thereAlreadySessionDayDesc(String date, String hour) {
    return 'There is already a session started on $date at $hour for this apprentice. Do you want to continue?';
  }

  @override
  String get pastaCurricular_yesContinueServiceDesc => 'Yes, continue service';

  @override
  String get pastaCurricular_noFinishStartNewOneDesc =>
      'No, finish and start a new one';

  @override
  String get pastaCurricular_criteriaInformationTitle => 'Criteria information';

  @override
  String get pastaCurricular_programInformationTitle => 'Program Information';

  @override
  String get pastaCurricular_typeTeachingTitle => 'Type of Teaching';

  @override
  String get pastaCurricular_numberAttemptsLabel => 'Number of Attempts';

  @override
  String get pastaCurricular_scaleLabel => 'Scale';

  @override
  String get pastaCurricular_skillLabel => 'Skill';

  @override
  String get pastaCurricular_procedureLabel => 'Procedure';

  @override
  String get pastaCurricular_sdLabel => 'SD';

  @override
  String get pastaCurricular_materialsLabel => 'Materials';

  @override
  String get pastaCurricular_tipStepLabel => 'Tip Step';

  @override
  String get pastaCurricular_correctionProcedureLabel => 'Correction Procedure';

  @override
  String get pastaCurricular_learningCriteriaLabel => 'Learning Criteria';

  @override
  String get pastaCurricular_objectives => 'Objectives';

  @override
  String get pastaCurricular_apprenticeHasNoCurriculumFolderDesc =>
      'The apprentice has no registered curriculum folders';

  @override
  String get pastaCurricular_continueLabel => 'Continue';

  @override
  String get pastaCurricular_startSessionLabel => 'Start Session';

  @override
  String get pastaCurricular_folderNoProgramEligibleDesc =>
      'The curriculum folder has no eligible programs';

  @override
  String get pastaCurrilular_accessWebSite =>
      'Access our web platform to register';

  @override
  String get pastaCurricular_chooseOptionAndStart =>
      'Below are the CV Folder options for the patient. Choose one and start the session.';

  @override
  String get pastaCurricular_targets => 'Targets';

  @override
  String get pastaCurricular_criteria => 'Criteria';

  @override
  String get routine_routineRecordsTitle => 'Routine Records';

  @override
  String get routine_newRoutineRecordLabel => 'New Routine Record';

  @override
  String get routine_noRoutineRecordsCreatedThroughApplicationDesc =>
      'No routine records were created through the application';

  @override
  String get routine_unableStartRoutineRecordDesc =>
      'Unable to start routine record';

  @override
  String get routine_newRecordLabel => 'New Record';

  @override
  String get routine_unableStartRoutineRecordCreationDesc =>
      'Unable to start routine record creation';

  @override
  String get routine_dailyRecordSavedSuccessfullyDesc =>
      'Daily record saved successfully';

  @override
  String get routine_routineRecordActionsLabel => 'Routine Record Actions';

  @override
  String get routine_expectedOutcomeLabel => 'Expected Outcome:';

  @override
  String get routine_yesLabel => 'Yes';

  @override
  String get routine_noLabel => 'No';

  @override
  String get routine_recordTypeLabel => 'Record Type:';

  @override
  String get routine_locationIncidenceLabel => 'Incidence Location:';

  @override
  String get routine_reportLabel => 'Report:';

  @override
  String get routine_hashCopiedClipboardDesc => 'Hash copied to clipboard';

  @override
  String get routine_expectedResponseLabel => 'Expected Response';

  @override
  String get routine_finishLabel => 'Finish';

  @override
  String get routine_pauseLabel => 'Pause';

  @override
  String get routine_cancelLabel => 'Cancel';

  @override
  String get routine_dateTimeLabel => 'Date and Time:';

  @override
  String routine_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get routine_dateLabel => 'Date';

  @override
  String get routine_continueLabel => 'Continue';

  @override
  String get routine_sendLabel => 'Send';

  @override
  String get routine_routineActionsTitle => 'Routine Actions';

  @override
  String get routine_chooseLocation => 'Choose the location';

  @override
  String get routine_chooseType => 'Choose the type';

  @override
  String get routine_errorEmptyTypeRegisterDesc =>
      'No type of record has been registered. Please access the web platform and register';

  @override
  String get routine_errorEmptyLocalIncidentDesc =>
      'No incident location has been registered. Please access the web platform and register';

  @override
  String get routine_savedDeviceOnlyDesc =>
      'Routine Record saved on device only.';

  @override
  String get routine_statusCanceledLabel => 'Canceled';

  @override
  String get routine_statusSentLabel => 'Sent';

  @override
  String get routine_statusPausedLabel => 'Paused';

  @override
  String get routine_statusStartedLabel => 'Started';

  @override
  String get routine_statusCompletedLabel => 'Completed';

  @override
  String get routine_statusSubtitle => 'Status Subtitle';

  @override
  String get routine_successfullySentWebsiteDesc =>
      'Successfully sent to the website';

  @override
  String get routine_notSendDueToConnectionProblemsDesc =>
      'It was not possible to send the evolution due to internet connection problems';

  @override
  String get routine_pausedAndCanBeEditedDesc => 'Paused and can be edited';

  @override
  String get routine_canceledAndCanBeEditedDesc => 'Canceled and can be edited';

  @override
  String get routine_startedAndClosedUnexpectedlyDesc =>
      'Started and closed unexpectedly.';

  @override
  String get dailyEvolution_dailyEvolutionsTitle => 'Daily Evolutions';

  @override
  String get dailyEvolution_newEvolutionTitle => 'New Evolution';

  @override
  String get dailyEvolution_noDailyEvolutionsCreatedThroughApplicationDesc =>
      'No daily evolutions were created through the application';

  @override
  String get dailyEvolution_unableSearchDailyDevelopmentsDesc =>
      'Unable to search for daily developments';

  @override
  String get dailyEvolution_unableStartDailyEvolutionDesc =>
      'Unable to start the daily evolution';

  @override
  String get dailyEvolution_dailyEvolutionSavedSuccessfullyDesc =>
      'Daily evolution saved successfully';

  @override
  String get dailyEvolution_dailyEvolutionActionsTitle =>
      'Daily Evolution Actions';

  @override
  String get dailyEvolution_sendLabel => 'Send';

  @override
  String get dailyEvolution_pauseLabel => 'Pause';

  @override
  String get dailyEvolution_cancelLabel => 'Cancel';

  @override
  String get dailyEvolution_continueLabel => 'Continue';

  @override
  String get dailyEvolution_openLabel => 'Open';

  @override
  String get dailyEvolution_startLabel => 'Start';

  @override
  String get dailyEvolution_terminationLabel => 'End';

  @override
  String get dailyEvolution_serviceTitle => 'Service';

  @override
  String get dailyEvolution_serviceLabel => 'Service:';

  @override
  String get dailyEvolution_observationsTitle => 'Observations';

  @override
  String get dailyEvolution_observationsLabel => 'Observations:';

  @override
  String get dailyEvolution_hashCopiedClipboardDesc =>
      'Hash copied to clipboard';

  @override
  String dailyEvolution_untilLabel(String startDateTime, String endDateTime) {
    return '$startDateTime until $endDateTime';
  }

  @override
  String dailyEvolution_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get dailyEvolution_startDateLabel => 'Start Date';

  @override
  String get dailyEvolution_endDateLabel => 'End Date';

  @override
  String get dailyEvolution_dailyEvolutionSituationsTitle =>
      'Daily Evolution Situations';

  @override
  String get dailyEvolution_successfullySentWebsiteDesc =>
      'Successfully sent to the website';

  @override
  String get dailyEvolution_notSendDueToConnectionProblemsDesc =>
      'It was not possible to send the evolution due to internet connection problems';

  @override
  String get dailyEvolution_pausedAndCanBeEditedDesc =>
      'Paused and can be edited';

  @override
  String get dailyEvolution_canceledAndCanBeEditedDesc =>
      'Canceled and can be edited';

  @override
  String get dailyEvolution_startedAndClosedUnexpectedlyDesc =>
      'Started and closed unexpectedly.';

  @override
  String get dailyEvolution_startPeriodLabel => 'Start of Event';

  @override
  String get dailyEvolution_endPeriodLabel => 'End of Event';

  @override
  String get dailyEvolution_statusSubtitle => 'Status Legend';

  @override
  String get dailyEvolution_uploadSessionSummaryTitle =>
      'Upload sessions summary';

  @override
  String get dailyEvolution_attentionServiceFilledTitle =>
      'Attention: The service field is filled in.';

  @override
  String get dailyEvolution_existingDataServiceReplacedDesc =>
      'The existing data in the Service field will be replaced with the session summary data. Do you wish to continue?';

  @override
  String get dailyEvolution_dialogConfirmLabel => 'Confirm';

  @override
  String get dailyEvolution_dialogCancelLabel => 'Cancel';

  @override
  String get dailyEvolution_noServiceDatesInformed =>
      'No service found for the dates informed';

  @override
  String get dailyEvolution_statusCanceledLabel => 'Canceled';

  @override
  String get dailyEvolution_statusSentLabel => 'Sent';

  @override
  String get dailyEvolution_statusPausedLabel => 'Paused';

  @override
  String get dailyEvolution_statusStartedLabel => 'Started';

  @override
  String get dailyEvolution_statusCompletedLabel => 'Completed';

  @override
  String get dailyEvolution_schedulingCodeDesc =>
      'This daily evolution is linked to code appointment';

  @override
  String get dailyEvolution_recordAbsenceLabel => 'Record Absence';

  @override
  String get dailyEvolution_notSendDailyEvolutionDueToConnectionDesc =>
      'It was not possible to send the daily evolution due to internet connection problems';

  @override
  String get dailyEvolution_allowParentView => 'Allow responsible to view';

  @override
  String get dailyEvolution_notSaveDailyEvolution =>
      'Unable to save daily evolution';

  @override
  String get orientationTips_guidelinesTipsSavedSuccessfullyDesc =>
      'Guidelines/Tips saved successfully';

  @override
  String get orientationTips_guidanceActionsTitle => 'Guidance Actions';

  @override
  String get orientationTips_dateLabel => 'Date';

  @override
  String get orientationTips_guidanceTipLabel => 'Guidance/Tip';

  @override
  String get orientationTips_newGuidanceLabel => 'New Guidance';

  @override
  String get orientationTips_noGuidanceCreatedThroughAppDesc =>
      'No guidance was created through the app';

  @override
  String get orientationTips_hashCopiedClipboardDesc =>
      'Hash copied to clipboard';

  @override
  String get orientationTips_newGuidanceTipsLabel => 'New Guidance/Tips';

  @override
  String get orientationTips_thereErrorStartingGuidanceDesc =>
      'There was an error starting guidance';

  @override
  String get orientationTips_thereErrorLoadingInstructionsTipsDesc =>
      'There was an error loading instructions/tips';

  @override
  String get orientationTips_sendLabel => 'Send';

  @override
  String get orientationTips_pauseLabel => 'Pausar';

  @override
  String get orientationTips_cancelLabel => 'Cancel';

  @override
  String get orientationTips_finishLabel => 'Finish';

  @override
  String get orientationTips_continueLabel => 'Continue';

  @override
  String get orientationTips_statusCanceledLabel => 'Canceled';

  @override
  String get orientationTips_statusSentLabel => 'Sent';

  @override
  String get orientationTips_statusPausedLabel => 'Paused';

  @override
  String get orientationTips_statusStartedLabel => 'Started';

  @override
  String get orientationTips_statusCompletedLabel => 'Completed';

  @override
  String get orientationTips_statusSubtitle => 'Status Subtitle';

  @override
  String get orientationTips_successfullySentWebsiteDesc =>
      'Successfully sent to the website';

  @override
  String get orientationTips_notSendDueToConnectionProblemsDesc =>
      'It was not possible to send the evolution due to internet connection problems';

  @override
  String get orientationTips_startedAndClosedUnexpectedlyDesc =>
      'Started and closed unexpectedly.';

  @override
  String get orientationTips_pausedAndCanBeEditedDesc =>
      'Paused and can be edited';

  @override
  String get orientationTips_canceledAndCanBeEditedDesc =>
      'Canceled and can be edited';

  @override
  String get history_allLabel => 'All';

  @override
  String get history_sessionsLabel => 'Sessions';

  @override
  String get history_narrativeLabel => 'Narratives';

  @override
  String get history_dailyEvolutionLabel => 'Daily Evolutions';

  @override
  String get history_routineLabel => 'Routines';

  @override
  String get history_assessmentLabel => 'Assessments';

  @override
  String get history_orderingLabel => 'Ordering';

  @override
  String history_patientCodeLabel(String patientCode) {
    return 'Patient $patientCode';
  }

  @override
  String get sessao_noCollectionDesc =>
      'No collection was made through the application';

  @override
  String get graphics_unableFetchStatisticsDesc => 'Unable to fetch statistics';

  @override
  String get graphics_tryDifferentDateContactSupportDesc =>
      'Try a different date or contact support';

  @override
  String get graphics_sessionsAttendedTitle => 'Sessions Attended';

  @override
  String get graphics_programsUsedTitle => 'Programs Used';

  @override
  String get graphics_averageAttemptsSessionTitle => 'Average Attempts/Session';

  @override
  String get graphics_averageIndependenceSessionTitle =>
      'Average Independence/Session';

  @override
  String get graphics_performanceSkillTitle => 'Performance by Skill';

  @override
  String get graphics_answeredAttemptsIndependencePercentageTitle =>
      'Answered Attempts x Independence Percentage';

  @override
  String get graphics_usingTargetsStimuliTitle => 'Using Targets and Stimuli';

  @override
  String get graphics_highestPerformingProgramsTitle =>
      'Highest Performing Programs';

  @override
  String get graphics_patientStatisticsTitle => 'Patient Statistics';

  @override
  String get graphics_initialDateLabel => 'Initial date';

  @override
  String get graphics_finalDateLabel => 'Final date';

  @override
  String get graphics_selectCurriculumFolderLabel =>
      'Select the curriculum folder';

  @override
  String get graphics_errorLabel => 'Error';

  @override
  String get graphics_helpLabel => 'Help';

  @override
  String get graphics_independenceLabel => 'Independence';

  @override
  String get graphics_answeredLabel => 'Answered';

  @override
  String get graphics_estimuloInterventionLabel => 'INTERVENTION';

  @override
  String get graphics_estimuloAcquiredLabel => 'ACQUIRED';

  @override
  String get graphics_estimuloBaselineLabel => 'BASELINE';

  @override
  String get graphics_estimuloMaintenanceLabel => 'MAINTENANCE';

  @override
  String get graphics_estimuloGeneralizationLabel => 'GENERALIZATION';

  @override
  String get graphics_estimuloUndefinedLabel => 'ESTIMULO INDEFINIDO';

  @override
  String get graphics_title => 'Curriculum Folder';

  @override
  String get graphics_periodEventLabel => 'Period of event';

  @override
  String get patientHome_lastSyncLabel => 'Last sync';

  @override
  String get patientHome_notSynchronizedLabel => 'not synchronized';

  @override
  String get patientHome_year => 'years';

  @override
  String get patientHome_month => 'month';

  @override
  String get patientHome_months => 'months';

  @override
  String get patientHome_and => 'and';

  @override
  String get sessao_saveLabel => 'Save';

  @override
  String get sessao_closeLabel => 'Close';

  @override
  String get sessao_programInformationTitle => 'Program Information';

  @override
  String get sessao_sortTargetsLabel => 'Sort targets by:';

  @override
  String get sessao_sortDescriptionLabel => 'Description';

  @override
  String get sessao_sortOrderLabel => 'Order';

  @override
  String get sessao_sortGroupLabel => 'Group';

  @override
  String get sessao_sortAlternateLabel => 'Alternate';

  @override
  String get sessao_sortRandomLabel => 'Random';

  @override
  String get sessao_confirmLabel => 'Confirm';

  @override
  String get sessao_sessionCanceledErrorDesc => 'Session canceled due to error';

  @override
  String get sessao_unableStartSessionDesc => 'Unable to log in';

  @override
  String get sessao_unableUpdateSessionStatusDesc =>
      'Unable to update your session status';

  @override
  String get sessao_sessionActionsTitle => 'Session Actions';

  @override
  String get sessao_submitSessionLabel => 'Submit session';

  @override
  String get sessao_externalFactorsLabel => 'External factors';

  @override
  String get sessao_observationsLabel => 'Comments';

  @override
  String get sessao_inappropriateBehaviorsTitle => 'Interfering behaviors';

  @override
  String get sessao_reinforcersTitle => 'Reinforcers';

  @override
  String get sessao_thereAreNoTargetsEligibleProgramDesc =>
      'There are no targets eligible for this program at this time';

  @override
  String get sessao_thereAreNoProgransEligiblemDesc =>
      'There are no prograns eligible';

  @override
  String get sessao_recordAbsenceLabel => 'Record Absence';

  @override
  String get sessao_currentCriteriaLabel => 'Current criteria';

  @override
  String get sessao_selectedLabel => 'Selected';

  @override
  String get sessao_activityLabel => 'Activity';

  @override
  String get sessao_typeHereLabel => 'Type Here';

  @override
  String get sessao_editQuantityLabel => 'Edit quantity';

  @override
  String get sessao_somethingWrongHappenedDesc => 'Something wrong happened';

  @override
  String get sessao_sessionDateLabel => 'Session Date';

  @override
  String get sessao_nameTitle => 'Name';

  @override
  String get sessao_scaleTitle => 'Scale';

  @override
  String get sessao_skillTitle => 'Skill';

  @override
  String get sessao_typeOfEducationTitle => 'Type of Education';

  @override
  String get sessao_numberOfAttemptsTitle => 'Number of Attempts';

  @override
  String get sessao_procedureTitle => 'Procedure';

  @override
  String get sessao_sdTitle => 'SD';

  @override
  String get sessao_materialsTitle => 'Materials';

  @override
  String get sessao_tipStepTitle => 'Tip Step';

  @override
  String get sessao_correctionProcedureTitle => 'Correction Procedure';

  @override
  String get sessao_learningCriterionTitle => 'Learning Criterion';

  @override
  String get sessao_objectivesTitle => 'Objectives';

  @override
  String get sessao_sendLabel => 'Send';

  @override
  String get sessao_cancelLabel => 'Cancel';

  @override
  String get sessao_pauseLabel => 'Pause';

  @override
  String get sessao_searchProgramTitle => 'Search Program';

  @override
  String get sessao_idCode => 'Identification Code:';

  @override
  String get sessao_program => 'Program';

  @override
  String get sessao_next_label => 'Next';

  @override
  String get sessao_cancel_label => 'Cancel';

  @override
  String get sessao_targets => 'Targets';

  @override
  String get sessao_criteria => 'Criteria';

  @override
  String get sessao_typeTeachingTitle => 'Type of Teaching';

  @override
  String get sessao_numberAttemptsLabel => 'Number of Attempts';

  @override
  String get sessao_scaleLabel => 'Scale';

  @override
  String get sessao_categoryLabel => 'Category:';

  @override
  String get sessao_emptyBehaviors =>
      'The apprentice does not have registered behaviors';

  @override
  String get sessao_schedulingCodeDesc =>
      'This session is linked to code appointment';

  @override
  String get sessao_confirmDialogLabel => 'Confirm';

  @override
  String get sessao_cancelDialogLabel => 'Cancel';

  @override
  String get sessao_deleteBehaviorTitle => 'Remove behavior';

  @override
  String sessao_deleteBehaviorDesc(String behavior) {
    return 'Wish to remove the behavior $behavior';
  }

  @override
  String get sessao_deleteReinforcerTitle => 'Remove reinforcer';

  @override
  String sessao_deleteReinforcerDesc(String reinforcer) {
    return 'Wish to remove the reinforcer $reinforcer';
  }

  @override
  String get sessao_sheetOptions => 'Session Options';

  @override
  String get sessao_noSessionCreatedDesc =>
      'No Session was created through the app';

  @override
  String get login_logoutLabel => 'Log out';

  @override
  String get login_unableLoginDesc => 'Unable to login';

  @override
  String get login_okLabel => 'Ok';

  @override
  String get login_invalidLoginDesc => 'Invalid login';

  @override
  String get login_loginLabel => 'Login';

  @override
  String get login_passwordLabel => 'Password';

  @override
  String get login_enterLabel => 'Log in';

  @override
  String get login_welcome => 'Welcome';

  @override
  String get login_subtitle => 'Enter your email and password below';

  @override
  String get login_about_title => 'Want to know more?';

  @override
  String get login_button => 'About ABA+';

  @override
  String get login_emailOrPasswordInvalidDesc => 'User or password invalid';

  @override
  String get onboarding_welcome => 'Welcome to the ABA+ app';

  @override
  String get onboarding_firstPage_text1 =>
      'Analyze the way you work, compare and have more convenience in data collection with the ABA+ app.';

  @override
  String get onboarding_firstPage_text2 =>
      'Replace paper with digital recording: fast, practical, and secure! Put an end to the manual and slow process of data entry on record sheets and spreadsheets.';

  @override
  String get onboarding_secondPage_title => 'Who it`s for';

  @override
  String get onboarding_secondPage_psychologists =>
      '• Psychologists and psychoeducators';

  @override
  String get onboarding_secondPage_therapists => '• Occupational therapists';

  @override
  String get onboarding_secondPage_speechtherapists => '• Speech therapists';

  @override
  String get onboarding_secondPage_abascientists =>
      '• Professionals trained in ABA science';

  @override
  String get onboarding_secondPage_text =>
      'We have organized the system into 4 main modules to make life easier for our professionals.';

  @override
  String get onboarding_thirdPage_title => 'Some features';

  @override
  String get onboarding_thirdPage_patients_subtitle => 'Apprentice';

  @override
  String get onboarding_thirdPage_patientsarea_subtitle => 'Apprentice`s Area';

  @override
  String get onboarding_thirdPage_session_subtitle => 'Session';

  @override
  String get onboarding_thirdPage_avaliation_subtitle => 'Evaluation';

  @override
  String get onboarding_thirdPage_button => 'Continue';

  @override
  String get checklist_checklistTitle => 'Checklist';

  @override
  String get checklist_modelsLabel => 'Models';

  @override
  String get checklist_completedLabel => 'Completed';

  @override
  String get checklist_searchModelsLabel => 'Search for template';

  @override
  String get checklist_searchChecklistLabel => 'Search for checklist';

  @override
  String get checklist_unableLoadModelsDesc => 'Unable to load templates';

  @override
  String get checklist_tryAgainDesc => 'Please try again or contact support';

  @override
  String get checklist_noChecklistFoundDesc => 'No CheckList found';

  @override
  String get checklist_newChecklistDesc =>
      'Create a new checklist by selecting a template';

  @override
  String get checklist_noModelsFoundDesc => 'No model found';

  @override
  String get checklist_newModelDesc => 'Create a new model in the web platform';

  @override
  String get alvos_interventionLabel => 'INTERVENTION';

  @override
  String get alvos_acquiredLabel => 'ACQUIRED';

  @override
  String get alvos_baselineLabel => 'BASELINE';

  @override
  String get alvos_maintenanceLabel => 'MAINTENANCE';

  @override
  String get alvos_generalizationLabel => 'GENERALIZATION';

  @override
  String get criterios_grauMoreIntrusive => 'MORE INTRUSIVE';

  @override
  String get criterios_grauLessIntrusive => 'LESS INTRUSIVE';

  @override
  String get criterios_grauError => 'ERROR';

  @override
  String get criterios_grauIndependent => 'INDEPENDENT';

  @override
  String get criterios_grauIntrusivePartial => 'INTRUSIVE PARTIAL';

  @override
  String get criterios_grauOmission => 'OMISSION';

  @override
  String get programas_ensinoNaturalisticTeaching => 'Naturalistic Teaching';

  @override
  String get programas_ensinoDiscreteStructured =>
      'Discrete Trial - Structured';

  @override
  String get programas_ensinoDiscreteInterleaved =>
      'Discrete Trial - Interleaved';

  @override
  String get programas_ensinoTaskAnalysis => 'Task Analysis';

  @override
  String get programas_ensinoFrequency => 'Frequency';

  @override
  String get programas_ensinoDuration => 'Duration';

  @override
  String get inAppUpdate_mandatoryUpdateDesc => 'Mandatory update';

  @override
  String get inAppUpdate_availableUpdateDesc => 'Update available!';

  @override
  String get inAppUpdate_proceedToUpdateDesc => 'Proceed to app update?';

  @override
  String get inAppUpdate_wishToUpdateToNewestVersionDesc =>
      'Do you wish to update the app to the newest version?';

  @override
  String get inAppUpdate_yesLabel => 'Yes';

  @override
  String get inAppUpdate_noLabel => 'No';

  @override
  String get abaStorage_createdInLabel => 'Created in ';

  @override
  String get abaStorage_sizeLabel => 'Size ';

  @override
  String get abaStorage_durationLabel => 'Duration ';

  @override
  String get abaStorage_removeLabel => 'Remove';

  @override
  String get abaStorage_closeLabel => 'Close';

  @override
  String get abaStorage_deleteAttachmentLabel => 'Delete attachment';

  @override
  String get abaStorage_deleteAttachmentConfirmationDesc =>
      'Are you sure you want to delete the attachment?';

  @override
  String get abaStorage_cancelLabel => 'Cancel';

  @override
  String get abaStorage_deleteLabel => 'Delete';

  @override
  String get abaStorage_fileNotFoundDesc => 'File not found';

  @override
  String get abaStorage_fileTooLargeDesc => 'File too large';

  @override
  String get abaStorage_unableSaveFileDesc => 'Could not save file';

  @override
  String get abaStorage_unableDownloadFileDesc => 'Unable to download file';

  @override
  String get abaStorage_unableGetAbaFilesDesc => 'Unable to load files';

  @override
  String get abaStorage_unableDeleteFileDesc => 'Could not delete file';

  @override
  String get abaStorage_unableSyncFilesPendingDesc =>
      'Unable to sync pending files';

  @override
  String get abaStorage_noNetworkDesc => 'No internet connection';

  @override
  String get abaStorage_unableSyncFilesDesc => 'Unable to sync files';

  @override
  String get abaStorage_unavailableFile => 'File not available';

  @override
  String get core_systemDefault => 'System default';

  @override
  String get core_scheduleLabel => 'Schedule';

  @override
  String get core_apprenticesLabel => 'Apprentices';

  @override
  String get core_historyLabel => 'History';

  @override
  String get core_sessionLabel => 'Session';

  @override
  String get core_abcNarrativeLabel => 'ABC Narrative';

  @override
  String get core_dailyEvolutionLabel => 'Daily Evolution';

  @override
  String get core_routineRecordsLabel => 'Routine Records';

  @override
  String get core_guidanceTipsLabel => 'Guidance/Tips';

  @override
  String get core_graphicsLabel => 'Graphics';

  @override
  String get core_assessmentsLabel => 'Assessments';

  @override
  String get core_no_internet => 'No internet connection';

  @override
  String get libDs_holdRecordReleaseFinishDesc =>
      'To use transcription, press and hold the button and release after 2 seconds when you finish speaking to confirm the recording';

  @override
  String get libDs_unableUseVoiceFeatureDesc => 'Unable to use voice feature';

  @override
  String get libDs_localeIdLabel => 'en-US';

  @override
  String get libDs_chooseInitialDate => 'Choose the initial date';

  @override
  String get libDs_chooseDuration => 'Choose the event duration';

  @override
  String get libDs_saveSelectedLabel => 'Save selected';

  @override
  String get libDs_cancelLabel => 'Cancel';

  @override
  String get libDs_archivesLabel => 'Archives';

  @override
  String get libDs_noImageOrVideoDesc => 'No images or videos for now...';

  @override
  String libDs_attachmentsLabel(int itens, int maxItens) {
    return '$itens of $maxItens attachments';
  }

  @override
  String get libDs_attachFilesLabel => 'Attach files';

  @override
  String get libDs_takePhotoOrRecordVideoLabel =>
      'Take a photo or record a video';

  @override
  String get libDs_attachImageVideoGalleryLabel =>
      'Attach image or video from your gallery';

  @override
  String get libDs_attachDocumentsGalleryLabel =>
      'Attach documents from your gallery';

  @override
  String get libDs_unableInitializeFilesDesc => 'Unable to initialize files';

  @override
  String get libDs_allowCameraLabel => 'Allow camera use';

  @override
  String get libDs_allowMicrophoneLabel => 'Allow audio recording';

  @override
  String get libDs_permissionAccessCameraDesc =>
      'This function needs permission to access the camera.';

  @override
  String get libDs_syncPendingFilesTitle => 'Synchronizing pending files';

  @override
  String libDs_uploadProgressLabel(int uploaded, int total, int progress) {
    return '$uploaded of $total files synced: $progress%';
  }

  @override
  String get libDs_allFilesSyncedDesc => 'All files have been synced';

  @override
  String get libDs_waitProcessingFilesDesc =>
      'Please wait while processing files...';

  @override
  String get libDs_selectedFilesReachedDesc => 'Selected files limit reached';

  @override
  String get libDs_selectedPhotosOrVideosReachedDesc => 'Media limit reached';

  @override
  String get libDs_webCodeLabel => 'Web code:';

  @override
  String get libDs_dateLabel => 'Date';

  @override
  String libDs_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get libDs_statusCanceledLabel => 'Canceled';

  @override
  String get libDs_statusSentLabel => 'Sent';

  @override
  String get libDs_statusPausedLabel => 'Paused';

  @override
  String get libDs_statusStartedLabel => 'Started';

  @override
  String get libDs_statusCompletedLabel => 'Completed';

  @override
  String get libDs_tempFileLabel =>
      'The file will be saved in the cloud until the selected item is sent, or for up to 30 days.';

  @override
  String get libDs_notUpdatedLabel => 'Not updated';

  @override
  String libDs_updatedAtDesc(String updatedAt) {
    return 'Updated at: $updatedAt';
  }

  @override
  String get libDs_codeLabel => 'Code';

  @override
  String get libDs_descriptionLabel => 'Description';
}
