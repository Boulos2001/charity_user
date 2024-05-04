class APiPath {
  static const String local = "http://192.168.137.100:5050/api/";
  // static const String dev = "https://backend.dev.award-shj.ae/api/";
  static const String staging = "https://backend.stg.award-shj.ae/api/";
  static const String baseUrl = staging;

  static const String login = 'Authentication/Login';
  static const String signUp = 'Authentication/SignUp';
  static const String checkConfirmationCodeForSignUp =
      'Authentication/CheckConfirmationCodeForSignUp';
  static const String news = 'News';
  static const String agenda = 'Agenda';
  static const String getAgendasByCycleId = 'GetAgendasByCycleId';

  static const String aboutAward = 'AboutPage';
  static const String event = 'Event';
  static const String generalWorkshop = 'GeneralWorkshope';
  static const String trainingWorkshop = 'TrainingWorkshop';
  static const String cycle = 'Cycle';
  static const String categoriesWithSubcategories =
      'Category/CategoriesWithSubcategories';
  static const String dynamicAttributeSection =
      'DynamicAttributeSection/GetAllDynamicAttributeSectionsForAdd';
  static const String category = 'Category';

  static const String providedForm = 'ProvidedForm';
  

  static const String changeStep = 'ChangeStep';
  static const String signingTheForm = 'SigningTheForm';

  static const String faq = 'FAQ';
  static const String getAllFAQsByCategoryId = 'GetAllFAQsByCategoryId';
  static const String termsAndConditions = 'TermsAndConditions';
  static const String agreeOnTermAndCondition = 'AgreeOnTermAndCondition';

  static const String getAllTermsAndConditionsByCategoryId =
      'GetAllTermsAndConditionsByCategoryId';

  static const String getWorkShopsByCategoryId = 'GetWorkShopsByCategoryId';

  static const String getAllSpecialConditionsByCategoryId =
      'GetAllSpecialConditionsByCategoryId';
  static const String addDynamicAttributeValue =
      "DynamicAttribute/AddDynamicAttributeValue";
  static const String addDynamicAttributeValueForSave =
      "DynamicAttribute/AddDynamicAttributeValueForSave";
  static const String getLimitedNumberOfCategories =
      'GetLimitedNumberOfCategories';
  static const String conditionAttachment = 'ConditionAttachment';
  static const String checkAllConditions = 'CheckAllConditions';
  static const String coordinator = 'Coordinator';
  static const String searchForCoordinator = 'SearchForCoordinator';
  static const String searchForCoordinators = 'SearchForCoordinators';

  static const String educationalEntity = 'EducationalEntity';
  static const String educationalInstitution = 'EducationalInstitution';
  //
  static const String getAllCriterionByCategoryId =
      'Criterion/GetAllCriterionByCategoryId';
  //
  static const String createCriterionAttachment =
      'Criterion/CreateCriterionAttachment';
  static const String createCriterionItemAttachment =
      'Criterion/CreateCriterionItemAttachment';
  static const String deleteCriterionAttachment =
      'Criterion/DeleteCriterionAttachment';
  static const String deleteCriterionItemAttachment =
      'Criterion/DeleteCriterionItemAttachment';
  static const String checkIfAllCritrionsHaveAttachment =
      'Criterion/CheckIfAllCritrionsHaveAttachment';

  static const String generalFAQCategory = 'GeneralFAQCategory';
  static const String getAllGeneralFAQCategories = 'GetAllGeneralFAQCategories';

  ///related account

  static const String relatedAccount = 'RelatedAccount';
  static const String sendRelatingRequest = 'SendRelatingRequest';
  static const String getAllReceivedRequests = 'GetAllReceivedRequests';
  static const String getAllRelatedAccounts = 'GetAllRelatedAccounts';
  static const String acceptRelatingRequest = 'AcceptRelatingRequest';
  static const String rejectRelatingRequest = 'RejectRelatingRequest';
  static const String cancelRelating = 'CancelRelating';
  static const String getRelatedAccoutProfileById = 'GetRelatedAccoutProfileById';


  /////
  ///
  ///Settings

  static const String settings = 'Settings';
  static const String getPrivacyPolicy = 'GetPrivacyPolicy';
  static const String getTermsOfUse = 'GetTermsOfUse';
  static const String getAboutApp = 'GetAboutApp';
  static const String resetPassword = 'ResetPassword';
  static const String sendConfirmationCodeForResetPassword =
      'SendConfirmationCodeForResetPassword';
  static const String checkForConfirmationCode = 'CheckForConfirmationCode';
  static const String editProfile = 'EditProfile';
  static const String getProfileById = 'GetProfileById';

  ///
  ///
  ///
  static const String deleteProfile = 'DeleteProfile';
  static const String changePassword = 'User/ChangePassword';

  static const String achievements = 'Achievements';

  static const String cycleCondition = 'CycleCondition';
  static const String getCycleConditionByFormId = 'GetCycleConditionByFormId';
  static const String agreeOnCycleCondition = 'AgreeOnCycleCondition';
  static const String addAttachmentToCycleCondition =
      'AddAttachmentToCycleCondition';
  static const String checkAllCycleConditions = 'CheckAllCycleConditions';

  ///
}
