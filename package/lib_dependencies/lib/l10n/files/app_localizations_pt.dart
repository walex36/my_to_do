// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get home_logoutLabel => 'Deslogar';

  @override
  String get home_startLabel => 'Início';

  @override
  String get home_settingsLabel => 'Configurações';

  @override
  String get home_patientsLabel => 'Pacientes';

  @override
  String get home_sessionsLabel => 'Sessões';

  @override
  String get home_scheduleLabel => 'Agenda';

  @override
  String get home_updateMultiplePatientsDesc => 'Atualizar vários pacientes';

  @override
  String get home_unableStartDesc => 'Não foi possivel iniciar';

  @override
  String get home_browserSupportLabel => 'Suporte pelo navegador';

  @override
  String get home_whastappSuportLabel => 'Suporte pelo WhatsApp';

  @override
  String get home_syncSessionsLabel => 'Sincronizar Sessões';

  @override
  String get home_unableSendSessionDesc => 'Não foi possível enviar a sessão';

  @override
  String get home_patientDataSynchronizedSuccessfullyDesc =>
      'Dados do paciente sincronizados com sucesso';

  @override
  String get home_clickHoldPatientStartSelectionClickDesc =>
      'Clique e segure em algum paciente para iniciar a seleção, e clique novamente para selecionar os pacientes desejados';

  @override
  String get home_finishUpdateDesc =>
      'Para finalizar e atualizar, clique no botão de atualização';

  @override
  String get home_noPatientsFoundDesc => 'Nenhum paciente encontrado';

  @override
  String get home_accessOtherDataDesc =>
      'Para acessar outros dados, acesse a plataforma web';

  @override
  String get home_unableSearchSessionListDesc =>
      'Não foi possível buscar a lista de sessões.';

  @override
  String get home_checkYourInternetConnectionTryAgainDesc =>
      'Verifique sua conexão com a internet e tente novamente';

  @override
  String get home_hashCopiedClipboardDesc =>
      'Hash copiada para área de transferência';

  @override
  String get home_apprenticeAbsentLabel => 'Aprendiz faltou';

  @override
  String get home_errorLoadingPatientsListDesc =>
      'Erro ao carregar a lista de pacientes. Por favor, tente novamente';

  @override
  String get home_drawer_footer => 'Feito com ❤️ pelo time ABA+';

  @override
  String get home_drawer_error_message => 'Erro ao abrir a página de suporte';

  @override
  String get home_userLabel => 'Usuário:';

  @override
  String get home_aboutLabel => 'Sobre';

  @override
  String get home_lowMemoryLabel =>
      'Memória está acabando. Isso pode afetar o seu uso do App.';

  @override
  String get home_lowStorageLabel =>
      'Armazenamento está acabando. Isso pode afetar o seu uso do App.';

  @override
  String get splash_somethingWrongDesc => 'Ops... algo deu errado';

  @override
  String get splash_tryAgainLabel => 'Tentar Novamente';

  @override
  String get schedule_typeAppointmentAssessmentLabel => 'Avaliacao';

  @override
  String get schedule_typeAppointmentDailyEvolutionLabel => 'Evolucao Diaria';

  @override
  String get schedule_typeAppointmentSessionLabel => 'Sessao';

  @override
  String get schedule_typeAppointmentSupervisionLabel => 'Supervisao';

  @override
  String get schedule_typeAppointmentSchoolSupportLabel => 'Suporte escolar';

  @override
  String get schedule_typeAppointmentVisitLabel => 'Visita';

  @override
  String get schedule_typeAppointmentPlanningLabel => 'Planejamento';

  @override
  String get schedule_typeAppointmentUndefinedLabel => 'Tipo indefinido';

  @override
  String get schedule_typeSituationStartedLabel => 'Iniciada';

  @override
  String get schedule_typeSituationPendingLabel => 'Pendente';

  @override
  String get schedule_typeSituationScheduledLabel => 'Agendado';

  @override
  String get schedule_typeSituationCanceledLabel => 'Cancelado';

  @override
  String get schedule_typeSituationAbsenceLabel => 'Falta';

  @override
  String get schedule_typeSituationFinishedLabel => 'Finalizado';

  @override
  String get schedule_typeSituationUndefinedLabel => 'Situação Indefinida';

  @override
  String get schedule_typeFilterTodayLabel => 'Hoje';

  @override
  String get schedule_typeFilterNextSevenDaysLabel => 'Próximos 7 dias';

  @override
  String get schedule_typeFilterLastSevenDaysLabel => 'Últimos 7 dias';

  @override
  String get schedule_emptyAppointmentTypeFilterDesc =>
      'Nenhum agendamento para a opção selecionada';

  @override
  String get schedule_failureScheduleTitle =>
      'Não foi possível buscar a lista de agendamentos';

  @override
  String get schedule_failureScheduleDesc =>
      'Verifique sua conexão com a internet e tente novamente';

  @override
  String get schedule_emptyScheduleTitle =>
      'Os últimos 7 dias não possuem agendamentos';

  @override
  String get schedule_emptyScheduleDesc =>
      'Para acessar agendamentos mais antigos acesse a plataforma web';

  @override
  String get schedule_failureModalStartServiceDesc =>
      'Não foi possível iniciar o atendimento';

  @override
  String get schedule_codeModalTitle => 'Código';

  @override
  String get schedule_statusModalTitle => 'Status';

  @override
  String get schedule_typeServiceModalTitle => 'Tipo de atendimento';

  @override
  String get schedule_scheduleDateModalTitle => 'Data agendada';

  @override
  String get schedule_professionalModalTitle => 'Profissional';

  @override
  String get schedule_serviceLocationModalTitle => 'Local de Atendimento';

  @override
  String get schedule_observationsModalTitle => 'Observações';

  @override
  String get schedule_startServiceLabel => 'Iniciar atendimento';

  @override
  String get schedule_searchApprenticeLabel => 'Pesquisar Aprendiz';

  @override
  String get abcNarrative_finishLabel => 'Finalizar';

  @override
  String get abcNarrative_pauseLabel => 'Pausar';

  @override
  String get abcNarrative_cancelLabel => 'Cancelar';

  @override
  String abcNarrative_abcNarrativeTitle(int plural) {
    String _temp0 = intl.Intl.pluralLogic(
      plural,
      locale: localeName,
      other: 'Narrativa ABC',
      one: 'Narrativas ABC',
      zero: 'Narrativa ABC',
    );
    return '$_temp0';
  }

  @override
  String get abcNarrative_hashCopiedDesc =>
      'Hash copiada para área de transferência';

  @override
  String get abcNarrative_eventDateLabel => 'Data Evento';

  @override
  String get abcNarrative_durationLabel => 'Duração:';

  @override
  String get abcNarrative_incidentLocationLabel => 'Local Incidente:';

  @override
  String get abcNarrative_intensityDegreeLabel => 'Grau de Intensidade:';

  @override
  String get abcNarrative_backgroundLabel => 'A - Antecedentes:';

  @override
  String get abcNarrative_behaviorLabel => 'B - Comportamento:';

  @override
  String get abcNarrative_consequencesLabel => 'C - Consequências:';

  @override
  String get abcNarrative_continueLabel => 'Continuar';

  @override
  String get abcNarrative_openLabel => 'Abrir';

  @override
  String get abcNarrative_sendLabel => 'Enviar';

  @override
  String get abcNarrative_unableCreateAbcNarrativeDesc =>
      'Não foi possível iniciar a criação da narrativa abc';

  @override
  String get abcNarrative_newAbcNarrativeLabel => 'Nova Narrativa ABC';

  @override
  String get abcNarrative_noAbcNarrativeCreatedDesc =>
      'Nenhuma narrativa abc foi criada através do aplicativo';

  @override
  String get abcNarrative_unableStartAbcNarrativeListDesc =>
      'Não foi possível iniciar lista de narrativas abc';

  @override
  String get abcNarrative_newNarrativeLabel => 'Nova Narrativa';

  @override
  String get abcNarrative_abcNarrativeSavedSuccessfullyDesc =>
      'Narrativa ABC salva com sucesso';

  @override
  String get abcNarrative_abcNarrativeActionsTitle => 'Ações da Narrativa ABC';

  @override
  String get abcNarrative_dateTimeLabel => 'Data e Hora:';

  @override
  String get abcNarrative_chooseLocation => 'Escolha o local';

  @override
  String get abcNarrative_successfullySentWebsiteDesc =>
      'Enviada com sucesso para o site';

  @override
  String get abcNarrative_notSendDueToConnectionProblemsDesc =>
      'Não foi possivel enviar a evolução por problemas de conexão com a internet';

  @override
  String get abcNarrative_startedAndClosedUnexpectedlyDesc =>
      'Iniciada e foi fechada inesperadamente.';

  @override
  String get abcNarrative_pausedAndCanBeEditedDesc =>
      'Pausada e pode ser editada';

  @override
  String get abcNarrative_statusCanceledLabel => 'Cancelada';

  @override
  String get abcNarrative_statusSentLabel => 'Enviada';

  @override
  String get abcNarrative_statusPausedLabel => 'Pausada';

  @override
  String get abcNarrative_statusStartedLabel => 'Iniciada';

  @override
  String get abcNarrative_statusCompletedLabel => 'Finalizada';

  @override
  String get abcNarrative_notSendNarrativeDueToConnectionDesc =>
      'Não foi possivel enviar a narrativa ABC por problemas de conexão com a internet';

  @override
  String get patientsList_dataSyncWithSuccessDesc =>
      'Dados do paciente sincronizados com sucesso';

  @override
  String get patientsList_searchApprenticeLabel => 'Pesquisar Aprendiz';

  @override
  String get patientsList_lastSyncLabel => 'Última sincronização';

  @override
  String get patientsList_notSynchronizedLabel => 'não sincronizado';

  @override
  String get config_aboutLabel => 'Sobre';

  @override
  String get config_appVersionLabel => 'Versão do app';

  @override
  String get config_userLabel => 'Usuário:';

  @override
  String get config_userProfileLabel => 'Perfil do usuário:';

  @override
  String get config_deviceHashCopiedToClipboardDesc =>
      'Hash do Aparelho copiado para área de transferência';

  @override
  String get config_deviceHashLabel => 'Hash do Dispositivo:';

  @override
  String get config_hashUnavailableDesc => 'Hash indisponível';

  @override
  String get config_unableGetDeviceDataDesc =>
      'Não foi possível obter dados do dispositivo';

  @override
  String get config_contactSupport => 'Entre em contato com o suporte';

  @override
  String get config_language => 'Idioma';

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
      'Algo de errado aconteceu';

  @override
  String get avaliacoes_unableToSyncDesc =>
      'Não foi possível sincronizar a avaliação';

  @override
  String get avaliacoes_unableToSearchDesc =>
      'Não conseguimos buscar as avaliações no momento';

  @override
  String get avaliacoes_noResponseOptionsDesc =>
      'Este teste não possui opções de resposta. Por favor, acesse a plataforma web e realize o cadastro';

  @override
  String get avaliacoes_categoryLabel => 'Categoria:';

  @override
  String get avaliacoes_itemLabel => 'Item:';

  @override
  String get avaliacoes_milestoneLabel => 'Marco:';

  @override
  String get avaliacoes_criterionLabel => 'Critério:';

  @override
  String get avaliacoes_understoodLabel => 'Entendi';

  @override
  String get avaliacoes_assessmentPausedTitle => 'Avaliação Pausada';

  @override
  String avaliacoes_assessmentCreatedOnDesc(String date) {
    return 'Existe uma avaliação criada no dia $date';
  }

  @override
  String get avaliacoes_finishAndStartAgainLabel =>
      'Finalizar e iniciar novamente';

  @override
  String get avaliacoes_continueLabel => 'Continuar';

  @override
  String get avaliacoes_cancelLabel => 'Cancelar';

  @override
  String get avaliacoes_pauseLabel => 'Pausar';

  @override
  String get avaliacoes_finishLabel => 'Finalizar';

  @override
  String get avaliacoes_pauseAssessmentLabel => 'Pausar Avaliação';

  @override
  String get avaliacoes_cancelAssessmentLabel => 'Cancelar Avaliação';

  @override
  String get avaliacoes_finishAssessmentLabel => 'Finalizar Avaliação';

  @override
  String avaliacoes_wishToTakeActionDesc(String action) {
    return 'Tem certeza que deseja $action a avaliação?';
  }

  @override
  String get avaliacoes_wishToExitTitle => 'Deseja sair da avaliação?';

  @override
  String get avaliacoes_chooseActionOrReturnDesc =>
      'Escolha uma das ações de encerramento ou retorne a avaliação';

  @override
  String get avaliacoes_recordAbsenceLabel => 'Registrar Falta';

  @override
  String get avaliacoes_observationLabel => 'Observação';

  @override
  String get avaliacoes_deleteObjectiveLabel => 'Deletar objetivo';

  @override
  String get avaliacoes_wishToDeleteObjectiveDesc =>
      'Tem certeza que deseja deletar o objetivo?';

  @override
  String get avaliacoes_deleteLabel => 'Deletar';

  @override
  String get avaliacoes_skillLabel => 'Habilidade';

  @override
  String get avaliacoes_nameLabel => 'Nome:';

  @override
  String get avaliacoes_codeLabel => 'Código:';

  @override
  String get avaliacoes_orderLabel => 'Ordem:';

  @override
  String get avaliacoes_noAssessmentPerformedDesc =>
      'Você não possui avaliações realizadas nesse dispositivo';

  @override
  String get avaliacoes_unableToStartAssessmentDesc =>
      'Não foi possível iniciar a avaliação. Por favor, tente novamente ou entre em contato com o suporte';

  @override
  String get avaliacoes_unableToLoadAssessmentDesc =>
      'Não foi possível carregar as avaliações realizadas. Por favor, tente novamente ou entre em contato com o suporte';

  @override
  String get avaliacoes_assessmentHasNoObjectivesDesc =>
      'A avaliação não possui objetivos';

  @override
  String get avaliacoes_unableToLoadObjectivesDesc =>
      'Não foi possível carregar os objetivos. Por favor, tente novamente';

  @override
  String get avaliacoes_hashCopiedDesc =>
      'Hash copiado para a área de transferência';

  @override
  String avaliacoes_statusLabel(String status) {
    return 'Status: $status';
  }

  @override
  String get avaliacoes_startLabel => 'Início:';

  @override
  String get avaliacoes_endLabel => 'Fim:';

  @override
  String get avaliacoes_pauseColonLabel => 'Pausa:';

  @override
  String get avaliacoes_submissionLabel => 'Envio:';

  @override
  String get avaliacoes_hashLabel => 'Hash:';

  @override
  String get avaliacoes_observationColonLabel => 'Observação:';

  @override
  String get avaliacoes_assessmentNotSubmittedDesc =>
      'A avaliação não foi enviada devido a inconsistência de dados. Por favor, entre em contato com o suporte';

  @override
  String get avaliacoes_selectLevelLabel => 'Selecione um nível';

  @override
  String get avaliacoes_notUpdatedLabel => 'Não atualizado';

  @override
  String avaliacoes_updatedAtDesc(String updatedAt) {
    return 'Atualizado em: $updatedAt';
  }

  @override
  String get avaliacoes_typeLabel => 'Tipo:';

  @override
  String get avaliacoes_levelLabel => 'Nível:';

  @override
  String get avaliacoes_levelsLabel => 'Níveis';

  @override
  String get avaliacoes_testsLabel => 'Testes';

  @override
  String get avaliacoes_skillsAndLevelsLabel => 'Habilidades e níveis';

  @override
  String get avaliacoes_skillsAndTestsLabel => 'Habilidades e testes';

  @override
  String get avaliacoes_levelsAndTestsLabel => 'Níveis e testes';

  @override
  String get avaliacoes_objectiveLabel => 'Objetivo:';

  @override
  String get avaliacoes_editLabel => 'Editar';

  @override
  String avaliacoes_unableToActionAssessmentDesc(String action) {
    return 'Não foi possível $action a avaliação';
  }

  @override
  String get avaliacoes_canceledLabel => 'cancelada';

  @override
  String get avaliacoes_pausedLabel => 'pausada';

  @override
  String get avaliacoes_finishedLabel => 'finalizada';

  @override
  String avaliacoes_assessmentActionSuccessfullyDesc(String action) {
    return 'Avaliação $action com sucesso';
  }

  @override
  String get avaliacoes_errorSavingResponseDesc => 'Erro ao salvar resposta';

  @override
  String get avaliacoes_manageObjectivesLabel => 'Gerenciar objetivos';

  @override
  String get avaliacoes_somethingWentWrongDesc => 'Algo de errado aconteceu';

  @override
  String get avaliacoes_unableToSyncAssessmentDesc =>
      'Não foi possível sincronizar a avaliação';

  @override
  String get avaliacoes_selectTheLevelLabel => 'Selecione o nível';

  @override
  String get avaliacoes_selectTheSkillLabel => 'Selecione a habilidade';

  @override
  String get avaliacoes_insertTheObjectiveLabel => 'Insira o objetivo';

  @override
  String get avaliacoes_createObjectiveLabel => 'Criar Objetivo';

  @override
  String get avaliacoes_levelTitle => 'Nível';

  @override
  String get avaliacoes_objectiveTitle => 'Objetivo';

  @override
  String get avaliacoes_objectiveCreatedSuccessfullyDesc =>
      'Objetivo criado com sucesso';

  @override
  String get avaliacoes_unableCreateObjectiveDesc =>
      'Não foi possível criar objetivo';

  @override
  String get avaliacoes_objectiveSuccessfullyEditedDesc =>
      'Objetivo editado com sucesso';

  @override
  String get avaliacoes_unableEditObjectiveDesc =>
      'Não foi possível editar objetivo';

  @override
  String get avaliacoes_objectiveSuccessfullyDeletedDesc =>
      'Objetivo deletado com sucesso';

  @override
  String get avaliacoes_unableDeleteObjectiveDesc =>
      'Não foi possível deletar objetivo';

  @override
  String get avaliacoes_unableCompletePausedAssessmentDesc =>
      'Não foi possível finalizar a avaliação pausada';

  @override
  String get avaliacoes_protocolsTitle => 'Protocolos';

  @override
  String get avaliacoes_completedTitle => 'Realizadas';

  @override
  String get avaliacoes_searchSkillsTitle => 'Pesquisar habilidades';

  @override
  String get avaliacoes_assessmentDateTitle => 'Data da Avaliação';

  @override
  String get avaliacoes_dialogSaveLabel => 'Salvar';

  @override
  String get avaliacoes_dialogCloseLabel => 'Fechar';

  @override
  String get avaliacoes_intervieweesTitle => 'Entrevistados';

  @override
  String get avaliacoes_intervieweesParentsLabel => 'Pais Entrevistados';

  @override
  String get avaliacoes_intervieweesOutherLabel => 'Outros entrevistados';

  @override
  String get avaliacoes_commentsTitle => 'Observações';

  @override
  String get avaliacoes_thereAreNoSkilEligibleLevelDesc =>
      'Não há nenhuma habilidade elegível para este nível no momento';

  @override
  String get avaliacoes_thereAreNoTestsForSkillEligible =>
      'Não foram encontrados testes para essa habilidade.';

  @override
  String get avaliacoes_statusCanceledLabel => 'Cancelada';

  @override
  String get avaliacoes_statusSentLabel => 'Enviada';

  @override
  String get avaliacoes_statusPausedLabel => 'Pausada';

  @override
  String get avaliacoes_statusStartedLabel => 'Iniciada';

  @override
  String get avaliacoes_statusCompletedLabel => 'Finalizada';

  @override
  String get avaliacoes_schedulingCodeDesc =>
      'A avaliação está vinculada ao agendamento de código';

  @override
  String get avaliacoes_aditionalInfoPlaceholder =>
      'Insira informações adicionais';

  @override
  String avaliacoes_unableToStartAssessmentErrorSpecifiedDesc(String error) {
    return 'Não foi possível iniciar a avaliação. Por favor, acesse a plataforma web e verifique a lista de $error desse protocolo.';
  }

  @override
  String get avaliacoes_unableToSearchAssessmentsDesc =>
      'Não foi possível buscar as avaliações no momento, por favor tente novamente ou entre em contato com o suporte.';

  @override
  String get avaliacoes_unableToLoadAssessmentsDesc =>
      'Algo de errado aconteceu com a empresa em que está acessando, tente sair e acessar novamente ou entre em contato com o suporte.';

  @override
  String get pastaCurricular_title => 'Pasta Curricular';

  @override
  String get pastaCurricular_curriculumFolderSelectionTitle =>
      'Seleção de Pasta Curricular';

  @override
  String get pastaCurricular_apprenticeDataSynchronizedSuccessfullyDesc =>
      'Dados do aprendiz sincronizados com sucesso';

  @override
  String get pastaCurricular_apprenticeDataSyncedWaitSyncAgainDesc =>
      'Dados do aprendiz sincronizados, espere 5 minutos para sincronizar novamente';

  @override
  String
  get pastaCurricular_theprogramsFolderEligibleTargetsStimuliDisplayingInformationDesc =>
      'Os programas da pasta estão sem alvos/estímulos elegiveis para exibição das informações';

  @override
  String get pastaCurricular_checkTargetsStimuliWebSystemDesc =>
      'Verifique os alvos/estímulos no sistema web';

  @override
  String get pastaCurricular_thereProblemLoadingCurriculumFolderDetailsDesc =>
      'Houve um problema ao carregar os detalhes da pasta curricular';

  @override
  String get pastaCurricular_logOutLogBackNewSearchDesc =>
      'Saia e entre novamente para uma nova busca.';

  @override
  String
  get pastaCurricular_theApprenticeSynchronizedFoldersCannotSearchedDesc =>
      'O aprendiz ainda não foi sincronizado ou não foi possível buscar as pastas';

  @override
  String get pastaCurricular_pullDownRefreshApprenticeFoldersDesc =>
      'Puxe para baixo para atualizar as pastas desse aprendiz.';

  @override
  String get pastaCurricular_numberProgramsLabel => 'Quantidade de Programas';

  @override
  String get pastaCurricular_seeDetailsLabel => 'Ver Detalhes';

  @override
  String get pastaCurricular_beginSessionLabel => 'Iniciar Sessão';

  @override
  String get pastaCurricular_targetInformationLabel => 'Informações dos alvos';

  @override
  String get pastaCurricular_nameLabel => 'Nome';

  @override
  String get pastaCurricular_categoryLabel => 'Categoria';

  @override
  String get pastaCurricular_whatYouWantDoLabel => 'O que deseja fazer?';

  @override
  String pastaCurricular_thereAlreadySessionDayDesc(String date, String hour) {
    return 'Já existe uma sessão do dia $date ás $hour iniciada para esse aprendiz, deseja continuar?';
  }

  @override
  String get pastaCurricular_yesContinueServiceDesc =>
      'Sim, continuar atendimento';

  @override
  String get pastaCurricular_noFinishStartNewOneDesc =>
      'Não, finalizar e iniciar uma nova';

  @override
  String get pastaCurricular_criteriaInformationTitle =>
      'Informações dos critérios';

  @override
  String get pastaCurricular_programInformationTitle =>
      'Informações do Programa';

  @override
  String get pastaCurricular_typeTeachingTitle => 'Tipo de Ensino';

  @override
  String get pastaCurricular_numberAttemptsLabel => 'Quantidade de Tentativas';

  @override
  String get pastaCurricular_scaleLabel => 'Escala';

  @override
  String get pastaCurricular_skillLabel => 'Habilidade';

  @override
  String get pastaCurricular_procedureLabel => 'Procedimento';

  @override
  String get pastaCurricular_sdLabel => 'SD';

  @override
  String get pastaCurricular_materialsLabel => 'Materiais';

  @override
  String get pastaCurricular_tipStepLabel => 'Passo da Dica';

  @override
  String get pastaCurricular_correctionProcedureLabel =>
      'Procedimento de Correção';

  @override
  String get pastaCurricular_learningCriteriaLabel => 'Critério de Aprendizado';

  @override
  String get pastaCurricular_objectives => 'Objetivos';

  @override
  String get pastaCurricular_apprenticeHasNoCurriculumFolderDesc =>
      'O aprendiz não possui pastas curriculares cadastradas';

  @override
  String get pastaCurricular_continueLabel => 'Continuar';

  @override
  String get pastaCurricular_startSessionLabel => 'Iniciar Sessão';

  @override
  String get pastaCurricular_folderNoProgramEligibleDesc =>
      'A pasta curricular não tem programas elegíveis';

  @override
  String get pastaCurrilular_accessWebSite =>
      'Acesse nossa plataforma web para cadastrar';

  @override
  String get pastaCurricular_chooseOptionAndStart =>
      'Abaixo estão as opções de Pasta Curricular para o paciente. Escolha uma e inicie a sessão.';

  @override
  String get pastaCurricular_targets => 'Alvos';

  @override
  String get pastaCurricular_criteria => 'Critérios';

  @override
  String get routine_routineRecordsTitle => 'Registros de Rotina';

  @override
  String get routine_newRoutineRecordLabel => 'Novo Registro de Rotina';

  @override
  String get routine_noRoutineRecordsCreatedThroughApplicationDesc =>
      'Nenhum registro de rotina foi criada através do aplicativo';

  @override
  String get routine_unableStartRoutineRecordDesc =>
      'Não foi possível iniciar registro de rotina';

  @override
  String get routine_newRecordLabel => 'Novo Registro';

  @override
  String get routine_unableStartRoutineRecordCreationDesc =>
      'Não foi possível iniciar a criação do registro de rotina';

  @override
  String get routine_dailyRecordSavedSuccessfullyDesc =>
      'Registro diário salvo com sucesso';

  @override
  String get routine_routineRecordActionsLabel => 'Ações do Registro de Rotina';

  @override
  String get routine_expectedOutcomeLabel => 'Resultado Esperado:';

  @override
  String get routine_yesLabel => 'Sim';

  @override
  String get routine_noLabel => 'Não';

  @override
  String get routine_recordTypeLabel => 'Tipo de Registro:';

  @override
  String get routine_locationIncidenceLabel => 'Local de Incidência:';

  @override
  String get routine_reportLabel => 'Relatório:';

  @override
  String get routine_hashCopiedClipboardDesc =>
      'Hash copiada para área de transferência';

  @override
  String get routine_expectedResponseLabel => 'Resposta Esperada';

  @override
  String get routine_finishLabel => 'Finalizar';

  @override
  String get routine_pauseLabel => 'Pausar';

  @override
  String get routine_cancelLabel => 'Cancelar';

  @override
  String get routine_dateTimeLabel => 'Data e Hora:';

  @override
  String routine_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get routine_dateLabel => 'Data';

  @override
  String get routine_continueLabel => 'Continuar';

  @override
  String get routine_sendLabel => 'Enviar';

  @override
  String get routine_routineActionsTitle => 'Ações da Rotina';

  @override
  String get routine_chooseLocation => 'Escolha o local';

  @override
  String get routine_chooseType => 'Escolha o tipo';

  @override
  String get routine_errorEmptyTypeRegisterDesc =>
      'Nenhum tipo de registro foi cadastrado. Por favor, acesse a plataforma web e realize o cadastro';

  @override
  String get routine_errorEmptyLocalIncidentDesc =>
      'Nenhum local de incidencia foi cadastrado. Por favor, acesse a plataforma web e realize o cadastro';

  @override
  String get routine_savedDeviceOnlyDesc =>
      'Registro de rotina salvo somente no dispositivo.';

  @override
  String get routine_statusCanceledLabel => 'Cancelada';

  @override
  String get routine_statusSentLabel => 'Enviada';

  @override
  String get routine_statusPausedLabel => 'Pausada';

  @override
  String get routine_statusStartedLabel => 'Iniciada';

  @override
  String get routine_statusCompletedLabel => 'Finalizada';

  @override
  String get routine_statusSubtitle => 'Legenda dos Status';

  @override
  String get routine_successfullySentWebsiteDesc =>
      'Enviada com sucesso para o site';

  @override
  String get routine_notSendDueToConnectionProblemsDesc =>
      'Não foi possivel enviar a evolução por problemas de conexão com a internet';

  @override
  String get routine_pausedAndCanBeEditedDesc => 'Pausada e pode ser editada';

  @override
  String get routine_canceledAndCanBeEditedDesc =>
      'Cancelada e pode ser editada';

  @override
  String get routine_startedAndClosedUnexpectedlyDesc =>
      'Iniciada e foi fechada inesperadamente.';

  @override
  String get dailyEvolution_dailyEvolutionsTitle => 'Evoluções Diárias';

  @override
  String get dailyEvolution_newEvolutionTitle => 'Nova Evolução';

  @override
  String get dailyEvolution_noDailyEvolutionsCreatedThroughApplicationDesc =>
      'Nenhuma evolução diária foi criada através do aplicativo';

  @override
  String get dailyEvolution_unableSearchDailyDevelopmentsDesc =>
      'Não foi possível buscar evoluções diarias';

  @override
  String get dailyEvolution_unableStartDailyEvolutionDesc =>
      'Não foi possível iniciar a evolução diária';

  @override
  String get dailyEvolution_dailyEvolutionSavedSuccessfullyDesc =>
      'Evolução diária salva com sucesso';

  @override
  String get dailyEvolution_dailyEvolutionActionsTitle =>
      'Ações da Evolução Diária';

  @override
  String get dailyEvolution_sendLabel => 'Enviar';

  @override
  String get dailyEvolution_pauseLabel => 'Pausar';

  @override
  String get dailyEvolution_cancelLabel => 'Cancelar';

  @override
  String get dailyEvolution_continueLabel => 'Continuar';

  @override
  String get dailyEvolution_openLabel => 'Abrir';

  @override
  String get dailyEvolution_startLabel => 'Início';

  @override
  String get dailyEvolution_terminationLabel => 'Término';

  @override
  String get dailyEvolution_serviceTitle => 'Atendimento';

  @override
  String get dailyEvolution_serviceLabel => 'Atendimento:';

  @override
  String get dailyEvolution_observationsTitle => 'Observações';

  @override
  String get dailyEvolution_observationsLabel => 'Observações:';

  @override
  String get dailyEvolution_hashCopiedClipboardDesc =>
      'Hash copiada para área de transferência';

  @override
  String dailyEvolution_untilLabel(String startDateTime, String endDateTime) {
    return '$startDateTime até $endDateTime';
  }

  @override
  String dailyEvolution_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get dailyEvolution_startDateLabel => 'Data Inicio';

  @override
  String get dailyEvolution_endDateLabel => 'Data Fim';

  @override
  String get dailyEvolution_dailyEvolutionSituationsTitle =>
      'Situações das Evoluções Diárias';

  @override
  String get dailyEvolution_successfullySentWebsiteDesc =>
      'Enviada com sucesso para o site';

  @override
  String get dailyEvolution_notSendDueToConnectionProblemsDesc =>
      'Não foi possivel enviar a evolução por problemas de conexão com a internet';

  @override
  String get dailyEvolution_pausedAndCanBeEditedDesc =>
      'Pausada e pode ser editada';

  @override
  String get dailyEvolution_canceledAndCanBeEditedDesc =>
      'Cancelada e pode ser editada';

  @override
  String get dailyEvolution_startedAndClosedUnexpectedlyDesc =>
      'Iniciada e foi fechada inesperadamente.';

  @override
  String get dailyEvolution_startPeriodLabel => 'Início do Evento';

  @override
  String get dailyEvolution_endPeriodLabel => 'Fim do Evento';

  @override
  String get dailyEvolution_statusSubtitle => 'Legenda dos Status';

  @override
  String get dailyEvolution_uploadSessionSummaryTitle =>
      'Carregar resumo da sessão';

  @override
  String get dailyEvolution_attentionServiceFilledTitle =>
      'Atenção: O campo atendimento está preenchido.';

  @override
  String get dailyEvolution_existingDataServiceReplacedDesc =>
      'Os dados existentes no campo Atendimento serão substituídos com os dados de resumo das sessões. Deseja continuar?';

  @override
  String get dailyEvolution_dialogConfirmLabel => 'Confirmar';

  @override
  String get dailyEvolution_dialogCancelLabel => 'Cancelar';

  @override
  String get dailyEvolution_noServiceDatesInformed =>
      'Nenhum atendimento encontrado para às datas informadas';

  @override
  String get dailyEvolution_statusCanceledLabel => 'Cancelada';

  @override
  String get dailyEvolution_statusSentLabel => 'Enviada';

  @override
  String get dailyEvolution_statusPausedLabel => 'Pausada';

  @override
  String get dailyEvolution_statusStartedLabel => 'Iniciada';

  @override
  String get dailyEvolution_statusCompletedLabel => 'Finalizada';

  @override
  String get dailyEvolution_schedulingCodeDesc =>
      'A evolução diária está vinculada ao agendamento de código';

  @override
  String get dailyEvolution_recordAbsenceLabel => 'Registrar Falta';

  @override
  String get dailyEvolution_notSendDailyEvolutionDueToConnectionDesc =>
      'Não foi possivel enviar a evolução diária por problemas de conexão com a internet';

  @override
  String get dailyEvolution_allowParentView =>
      'Permitir a visualização dos responsáveis';

  @override
  String get dailyEvolution_notSaveDailyEvolution =>
      'Não foi possível salvar a evolução diária';

  @override
  String get orientationTips_guidelinesTipsSavedSuccessfullyDesc =>
      'Orientações/Dicas salva com sucesso';

  @override
  String get orientationTips_guidanceActionsTitle => 'Ações da Orientação';

  @override
  String get orientationTips_dateLabel => 'Data';

  @override
  String get orientationTips_guidanceTipLabel => 'Orientação/Dica';

  @override
  String get orientationTips_newGuidanceLabel => 'Nova Orientação';

  @override
  String get orientationTips_noGuidanceCreatedThroughAppDesc =>
      'Nenhuma orientação foi criada através do aplicativo';

  @override
  String get orientationTips_hashCopiedClipboardDesc =>
      'Hash copiado para a área de transferência';

  @override
  String get orientationTips_newGuidanceTipsLabel => 'Nova Orientações/Dicas';

  @override
  String get orientationTips_thereErrorStartingGuidanceDesc =>
      'Houve um erro ao iniciar a orientação';

  @override
  String get orientationTips_thereErrorLoadingInstructionsTipsDesc =>
      'Houve um erro ao carregar orientações/dicas';

  @override
  String get orientationTips_sendLabel => 'Enviar';

  @override
  String get orientationTips_pauseLabel => 'Pausar';

  @override
  String get orientationTips_cancelLabel => 'Cancelar';

  @override
  String get orientationTips_finishLabel => 'Finalizar';

  @override
  String get orientationTips_continueLabel => 'Continuar';

  @override
  String get orientationTips_statusCanceledLabel => 'Cancelada';

  @override
  String get orientationTips_statusSentLabel => 'Enviada';

  @override
  String get orientationTips_statusPausedLabel => 'Pausada';

  @override
  String get orientationTips_statusStartedLabel => 'Iniciada';

  @override
  String get orientationTips_statusCompletedLabel => 'Finalizada';

  @override
  String get orientationTips_statusSubtitle => 'Legenda do Status';

  @override
  String get orientationTips_successfullySentWebsiteDesc =>
      'Enviada com sucesso para o site';

  @override
  String get orientationTips_notSendDueToConnectionProblemsDesc =>
      'Não foi possivel enviar a evolução por problemas de conexão com a internet';

  @override
  String get orientationTips_startedAndClosedUnexpectedlyDesc =>
      'Iniciada e foi fechada inesperadamente.';

  @override
  String get orientationTips_pausedAndCanBeEditedDesc =>
      'Pausada e pode ser editada';

  @override
  String get orientationTips_canceledAndCanBeEditedDesc =>
      'Cancelada e pode ser editada';

  @override
  String get history_allLabel => 'Todos';

  @override
  String get history_sessionsLabel => 'Sessões';

  @override
  String get history_narrativeLabel => 'Narrativas';

  @override
  String get history_dailyEvolutionLabel => 'Evoluções Diárias';

  @override
  String get history_routineLabel => 'Rotinas';

  @override
  String get history_assessmentLabel => 'Avaliações';

  @override
  String get history_orderingLabel => 'Ordenação';

  @override
  String history_patientCodeLabel(String patientCode) {
    return 'Paciente $patientCode';
  }

  @override
  String get sessao_noCollectionDesc =>
      'Nenhuma coleta foi feita através do aplicativo';

  @override
  String get graphics_unableFetchStatisticsDesc =>
      'Não foi possível buscar as estatísticas';

  @override
  String get graphics_tryDifferentDateContactSupportDesc =>
      'Tente com uma data diferente ou procure pelo suporte';

  @override
  String get graphics_sessionsAttendedTitle => 'Sessões Atendidas';

  @override
  String get graphics_programsUsedTitle => 'Programas Utilizados';

  @override
  String get graphics_averageAttemptsSessionTitle =>
      'Média de Tentativas/Sessão';

  @override
  String get graphics_averageIndependenceSessionTitle =>
      'Média de Independência/Sessão';

  @override
  String get graphics_performanceSkillTitle => 'Desempenho por Habilidade';

  @override
  String get graphics_answeredAttemptsIndependencePercentageTitle =>
      'Tentativas Respondidas x Porcentagem Independência';

  @override
  String get graphics_usingTargetsStimuliTitle =>
      'Utilização Alvos e Estímulos';

  @override
  String get graphics_highestPerformingProgramsTitle =>
      'Programas com Maior Desempenho';

  @override
  String get graphics_patientStatisticsTitle => 'Estatísticas do Paciente';

  @override
  String get graphics_initialDateLabel => 'Data Inicial';

  @override
  String get graphics_finalDateLabel => 'Data Final';

  @override
  String get graphics_selectCurriculumFolderLabel =>
      'Selecione a pasta curricular';

  @override
  String get graphics_errorLabel => 'Erro';

  @override
  String get graphics_helpLabel => 'Ajuda';

  @override
  String get graphics_independenceLabel => 'Independência';

  @override
  String get graphics_answeredLabel => 'Respondidas';

  @override
  String get graphics_estimuloInterventionLabel => 'INTERVENCAO';

  @override
  String get graphics_estimuloAcquiredLabel => 'ADQUIRIDO';

  @override
  String get graphics_estimuloBaselineLabel => 'LINHABASE';

  @override
  String get graphics_estimuloMaintenanceLabel => 'MANUTENCAO';

  @override
  String get graphics_estimuloGeneralizationLabel => 'GENERALIZACAO';

  @override
  String get graphics_estimuloUndefinedLabel => 'STIMULUS UNDEFINED';

  @override
  String get graphics_title => 'Pasta Curricular';

  @override
  String get graphics_periodEventLabel => 'Período do Evento';

  @override
  String get patientHome_lastSyncLabel => 'Última sincronização';

  @override
  String get patientHome_notSynchronizedLabel => 'não sincronizado';

  @override
  String get patientHome_year => 'anos';

  @override
  String get patientHome_month => 'mês';

  @override
  String get patientHome_months => 'meses';

  @override
  String get patientHome_and => 'e';

  @override
  String get sessao_saveLabel => 'Salvar';

  @override
  String get sessao_closeLabel => 'Fechar';

  @override
  String get sessao_programInformationTitle => 'Informações do Programa';

  @override
  String get sessao_sortTargetsLabel => 'Ordenar alvos por:';

  @override
  String get sessao_sortDescriptionLabel => 'Descrição';

  @override
  String get sessao_sortOrderLabel => 'Ordem';

  @override
  String get sessao_sortGroupLabel => 'Grupo';

  @override
  String get sessao_sortAlternateLabel => 'Alternado';

  @override
  String get sessao_sortRandomLabel => 'Aleatório';

  @override
  String get sessao_confirmLabel => 'Confirmar';

  @override
  String get sessao_sessionCanceledErrorDesc =>
      'Sessão cancelada por estar com erro';

  @override
  String get sessao_unableStartSessionDesc =>
      'Não foi possível iniciar a sessão';

  @override
  String get sessao_unableUpdateSessionStatusDesc =>
      'Não foi possível atualizar o status da sua sessão';

  @override
  String get sessao_sessionActionsTitle => 'Ações da Sessão';

  @override
  String get sessao_submitSessionLabel => 'Enviar sessão';

  @override
  String get sessao_externalFactorsLabel => 'Fatores Externos';

  @override
  String get sessao_observationsLabel => 'Observações';

  @override
  String get sessao_inappropriateBehaviorsTitle =>
      'Comportamentos interferentes';

  @override
  String get sessao_reinforcersTitle => 'Reforçadores';

  @override
  String get sessao_thereAreNoTargetsEligibleProgramDesc =>
      'Não há alvos elegíveis para este programa no momento';

  @override
  String get sessao_thereAreNoProgransEligiblemDesc =>
      'Não há programas elegíveis';

  @override
  String get sessao_recordAbsenceLabel => 'Registrar Falta';

  @override
  String get sessao_currentCriteriaLabel => 'Criterio atual';

  @override
  String get sessao_selectedLabel => 'Selecionado';

  @override
  String get sessao_activityLabel => 'Atividade';

  @override
  String get sessao_typeHereLabel => 'Digite aqui';

  @override
  String get sessao_editQuantityLabel => 'Editar quantidade';

  @override
  String get sessao_somethingWrongHappenedDesc => 'Algo de errado aconteceu';

  @override
  String get sessao_sessionDateLabel => 'Data da Sessão';

  @override
  String get sessao_nameTitle => 'Nome';

  @override
  String get sessao_scaleTitle => 'Escala';

  @override
  String get sessao_skillTitle => 'Habilidade';

  @override
  String get sessao_typeOfEducationTitle => 'Tipo de Ensino';

  @override
  String get sessao_numberOfAttemptsTitle => 'Quantidade de Tentativas';

  @override
  String get sessao_procedureTitle => 'Procedimento';

  @override
  String get sessao_sdTitle => 'SD';

  @override
  String get sessao_materialsTitle => 'Materiais';

  @override
  String get sessao_tipStepTitle => 'Passo da Dica';

  @override
  String get sessao_correctionProcedureTitle => 'Procedimento de Correção';

  @override
  String get sessao_learningCriterionTitle => 'Critério de Aprendizado';

  @override
  String get sessao_objectivesTitle => 'Objetivos';

  @override
  String get sessao_sendLabel => 'Enviar';

  @override
  String get sessao_cancelLabel => 'Cancelar';

  @override
  String get sessao_pauseLabel => 'Pausar';

  @override
  String get sessao_searchProgramTitle => 'Pesquisar Programa';

  @override
  String get sessao_idCode => 'Código de Identificação:';

  @override
  String get sessao_program => 'Programa';

  @override
  String get sessao_next_label => 'Próximo';

  @override
  String get sessao_cancel_label => 'Cancelar';

  @override
  String get sessao_targets => 'Alvos';

  @override
  String get sessao_criteria => 'Critérios';

  @override
  String get sessao_typeTeachingTitle => 'Tipo de Ensino';

  @override
  String get sessao_numberAttemptsLabel => 'Quantidade de Tentativas';

  @override
  String get sessao_scaleLabel => 'Escala';

  @override
  String get sessao_categoryLabel => 'Categoria:';

  @override
  String get sessao_emptyBehaviors =>
      'O aprendiz não possui comportamentos cadastrados';

  @override
  String get sessao_schedulingCodeDesc =>
      'A sessão está vinculada ao agendamento de código';

  @override
  String get sessao_confirmDialogLabel => 'Confirmar';

  @override
  String get sessao_cancelDialogLabel => 'Cancelar';

  @override
  String get sessao_deleteBehaviorTitle => 'Remover comportamento';

  @override
  String sessao_deleteBehaviorDesc(String behavior) {
    return 'Deseja remover o comportamento $behavior';
  }

  @override
  String get sessao_deleteReinforcerTitle => 'Remover reforçador';

  @override
  String sessao_deleteReinforcerDesc(String reinforcer) {
    return 'Deseja remover o reforçador $reinforcer';
  }

  @override
  String get sessao_sheetOptions => 'Opções da Sessão';

  @override
  String get sessao_noSessionCreatedDesc =>
      'Nenhuma Sessão foi criada através do aplicativo';

  @override
  String get login_logoutLabel => 'Deslogar';

  @override
  String get login_unableLoginDesc => 'Não foi possível fazer o login';

  @override
  String get login_okLabel => 'Ok';

  @override
  String get login_invalidLoginDesc => 'Login Inválido';

  @override
  String get login_loginLabel => 'Login';

  @override
  String get login_passwordLabel => 'Senha';

  @override
  String get login_enterLabel => 'Entrar';

  @override
  String get login_welcome => 'Bem vindo (a)';

  @override
  String get login_subtitle => 'Entre com seu email e senha abaixo';

  @override
  String get login_about_title => 'Quer conhecer mais?';

  @override
  String get login_button => 'Sobre o ABA+';

  @override
  String get login_emailOrPasswordInvalidDesc => 'Usuário ou senha inválidos';

  @override
  String get onboarding_welcome => 'Bem vindo ao aplicativo ABA+';

  @override
  String get onboarding_firstPage_text1 =>
      'Analise o modo como trabalha, compare e tenha mais praticidade na coleta de dados com o app ABA+ .';

  @override
  String get onboarding_firstPage_text2 =>
      'Substitua o papel pelo registro digital: rápido, prático e seguro! Dê fim ao processo manual e moroso de inserção de dados em folhas de registros e planilhas.';

  @override
  String get onboarding_secondPage_title => 'Para quem é indicado';

  @override
  String get onboarding_secondPage_psychologists =>
      '• Psicólogos e psicopedagogos';

  @override
  String get onboarding_secondPage_therapists => '• Terapeutas ocupacionais';

  @override
  String get onboarding_secondPage_speechtherapists => '• Fonoaudiólogos';

  @override
  String get onboarding_secondPage_abascientists =>
      '• Profissionais capacitados na ciência ABA';

  @override
  String get onboarding_secondPage_text =>
      'Organizamos o sistema em 4 módulos principais para facilitar a vida dos nossos profissionais.';

  @override
  String get onboarding_thirdPage_title => 'Algumas funcionalidades';

  @override
  String get onboarding_thirdPage_patients_subtitle => 'Aprendizes';

  @override
  String get onboarding_thirdPage_patientsarea_subtitle => 'Área do Aprendiz';

  @override
  String get onboarding_thirdPage_session_subtitle => 'Sessão';

  @override
  String get onboarding_thirdPage_avaliation_subtitle => 'Avaliação';

  @override
  String get onboarding_thirdPage_button => 'Continuar';

  @override
  String get checklist_checklistTitle => 'Checklist';

  @override
  String get checklist_modelsLabel => 'Modelos';

  @override
  String get checklist_completedLabel => 'Realizadas';

  @override
  String get checklist_searchModelsLabel => 'Pesquisar modelo';

  @override
  String get checklist_searchChecklistLabel => 'Pesquisar checklist';

  @override
  String get checklist_unableLoadModelsDesc =>
      'Não foi possível carregar os modelos';

  @override
  String get checklist_tryAgainDesc =>
      'Por favor, tente novamente ou entre em contato com o suporte';

  @override
  String get checklist_noChecklistFoundDesc => 'Nenhum CheckList encontrado';

  @override
  String get checklist_newChecklistDesc =>
      'Cadastre um novo checklist escolhendo um modelo';

  @override
  String get checklist_noModelsFoundDesc => 'Nenhum modelo encontrado';

  @override
  String get checklist_newModelDesc => 'Cadastre um novo modelo no sistema web';

  @override
  String get alvos_interventionLabel => 'INTERVENCAO';

  @override
  String get alvos_acquiredLabel => 'ADQUIRIDO';

  @override
  String get alvos_baselineLabel => 'LINHABASE';

  @override
  String get alvos_maintenanceLabel => 'MANUTENCAO';

  @override
  String get alvos_generalizationLabel => 'GENERALIZACAO';

  @override
  String get criterios_grauMoreIntrusive => 'MAIS INTRUSIVA';

  @override
  String get criterios_grauLessIntrusive => 'MENOS INTRUSIVA';

  @override
  String get criterios_grauError => 'ERRO';

  @override
  String get criterios_grauIndependent => 'INDEPENDENTE';

  @override
  String get criterios_grauIntrusivePartial => 'PARCIAL INTRUSIVA';

  @override
  String get criterios_grauOmission => 'OMISSAO';

  @override
  String get programas_ensinoNaturalisticTeaching => 'Ensino Naturalístico';

  @override
  String get programas_ensinoDiscreteStructured =>
      'Tentativa Discreta - Estruturada';

  @override
  String get programas_ensinoDiscreteInterleaved =>
      'Tentativa Discreta - Intercalada';

  @override
  String get programas_ensinoTaskAnalysis => 'Análise de Tarefas';

  @override
  String get programas_ensinoFrequency => 'Frequência';

  @override
  String get programas_ensinoDuration => 'Duração';

  @override
  String get inAppUpdate_mandatoryUpdateDesc => 'Atualização obrigatória';

  @override
  String get inAppUpdate_availableUpdateDesc => 'Atualização disponível!';

  @override
  String get inAppUpdate_proceedToUpdateDesc =>
      'Prosseguir para a atualização do app?';

  @override
  String get inAppUpdate_wishToUpdateToNewestVersionDesc =>
      'Deseja atualizá-lo para a versão mais recente?';

  @override
  String get inAppUpdate_yesLabel => 'Sim';

  @override
  String get inAppUpdate_noLabel => 'Não';

  @override
  String get abaStorage_createdInLabel => 'Criado em ';

  @override
  String get abaStorage_sizeLabel => 'Tamanho ';

  @override
  String get abaStorage_durationLabel => 'Duração ';

  @override
  String get abaStorage_removeLabel => 'Remover';

  @override
  String get abaStorage_closeLabel => 'Fechar';

  @override
  String get abaStorage_deleteAttachmentLabel => 'Excluir anexo';

  @override
  String get abaStorage_deleteAttachmentConfirmationDesc =>
      'Tem certeza que deseja excluir o anexo?';

  @override
  String get abaStorage_cancelLabel => 'Cancelar';

  @override
  String get abaStorage_deleteLabel => 'Excluir';

  @override
  String get abaStorage_fileNotFoundDesc => 'Arquivo não encontrado';

  @override
  String get abaStorage_fileTooLargeDesc => 'Arquivo muito grande';

  @override
  String get abaStorage_unableSaveFileDesc =>
      'Não foi possivel salvar o arquivo';

  @override
  String get abaStorage_unableDownloadFileDesc =>
      'Não foi possivel baixar o arquivo';

  @override
  String get abaStorage_unableGetAbaFilesDesc =>
      'Não foi possivel carregar os arquivos';

  @override
  String get abaStorage_unableDeleteFileDesc =>
      'Não foi possivel excluir o arquivo';

  @override
  String get abaStorage_unableSyncFilesPendingDesc =>
      'Não foi possivel sincronizar os arquivos pendentes';

  @override
  String get abaStorage_noNetworkDesc => 'Sem conexão com a internet';

  @override
  String get abaStorage_unableSyncFilesDesc =>
      'Não foi possivel sincronizar os arquivos';

  @override
  String get abaStorage_unavailableFile => 'Arquivo não disponível';

  @override
  String get core_systemDefault => 'Padrão do sistema';

  @override
  String get core_scheduleLabel => 'Agenda';

  @override
  String get core_apprenticesLabel => 'Aprendizes';

  @override
  String get core_historyLabel => 'Histórico';

  @override
  String get core_sessionLabel => 'Sessão';

  @override
  String get core_abcNarrativeLabel => 'Narrativa ABC';

  @override
  String get core_dailyEvolutionLabel => 'Evolução Diária';

  @override
  String get core_routineRecordsLabel => 'Registros de Rotina';

  @override
  String get core_guidanceTipsLabel => 'Orientações/Dicas';

  @override
  String get core_graphicsLabel => 'Gráficos';

  @override
  String get core_assessmentsLabel => 'Avaliações';

  @override
  String get core_no_internet => 'Sem conexão com a internet';

  @override
  String get libDs_holdRecordReleaseFinishDesc =>
      'Para usar a transcrição, pressione e segure o botão solte após 2 segundos ao terminar de falar para confirmar a gravação';

  @override
  String get libDs_unableUseVoiceFeatureDesc =>
      'Não foi possível utilizar o recurso de voz';

  @override
  String get libDs_localeIdLabel => 'pt-BR';

  @override
  String get libDs_chooseInitialDate => 'Escolha a data inicial';

  @override
  String get libDs_chooseDuration => 'Escolha a duração do evento';

  @override
  String get libDs_saveSelectedLabel => 'Salvar selecionados';

  @override
  String get libDs_cancelLabel => 'Cancelar';

  @override
  String get libDs_archivesLabel => 'Arquivos';

  @override
  String get libDs_noImageOrVideoDesc =>
      'Sem imagens ou vídeos por enquanto...';

  @override
  String libDs_attachmentsLabel(int itens, int maxItens) {
    return '$itens de $maxItens anexos';
  }

  @override
  String get libDs_attachFilesLabel => 'Anexar arquivos';

  @override
  String get libDs_takePhotoOrRecordVideoLabel => 'Tirar foto ou gravar vídeo';

  @override
  String get libDs_attachImageVideoGalleryLabel =>
      'Anexe imagem ou vídeo da sua galeria';

  @override
  String get libDs_attachDocumentsGalleryLabel =>
      'Anexe documentos da sua galeria';

  @override
  String get libDs_unableInitializeFilesDesc =>
      'Não foi possivel iniciar os arquivos';

  @override
  String get libDs_allowCameraLabel => 'Permitir uso da câmera';

  @override
  String get libDs_allowMicrophoneLabel => 'Permitir gravação de audio';

  @override
  String get libDs_permissionAccessCameraDesc =>
      'Está função precisa de permissão para acessar a câmera.';

  @override
  String get libDs_syncPendingFilesTitle => 'Sincronizando arquivos pendentes';

  @override
  String libDs_uploadProgressLabel(int uploaded, int total, int progress) {
    return '$uploaded de $total arquivos sincronizados: $progress%';
  }

  @override
  String get libDs_allFilesSyncedDesc =>
      'Todos os arquivos foram sincronizados';

  @override
  String get libDs_waitProcessingFilesDesc =>
      'Aguarde enquanto os arquivos são processados...';

  @override
  String get libDs_selectedFilesReachedDesc =>
      'Limite de média selecionados atingido';

  @override
  String get libDs_selectedPhotosOrVideosReachedDesc =>
      'Limite de mídia atingido.';

  @override
  String get libDs_webCodeLabel => 'Código web:';

  @override
  String get libDs_dateLabel => 'Data';

  @override
  String libDs_hashLabel(String hash) {
    return 'Hash: $hash';
  }

  @override
  String get libDs_statusCanceledLabel => 'Cancelada';

  @override
  String get libDs_statusSentLabel => 'Enviada';

  @override
  String get libDs_statusPausedLabel => 'Pausada';

  @override
  String get libDs_statusStartedLabel => 'Iniciada';

  @override
  String get libDs_statusCompletedLabel => 'Finalizada';

  @override
  String get libDs_tempFileLabel =>
      'O arquivo será salvo na nuvem até o envio do item selecionado, ou por até 30 dias.';

  @override
  String get libDs_notUpdatedLabel => 'Não atualizado';

  @override
  String libDs_updatedAtDesc(String updatedAt) {
    return 'Atualizado em: $updatedAt';
  }

  @override
  String get libDs_codeLabel => 'Código';

  @override
  String get libDs_descriptionLabel => 'Descrição';
}
