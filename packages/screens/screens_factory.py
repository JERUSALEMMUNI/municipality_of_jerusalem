from infra import logger, reporter
from screens.forms import contractor_emp_rights, place_container, collective_life_insurance, transfer_dog_ownership, \
    better_tax_ptor, confirmation_for_structure, photo_permission, email_registration, tree_cut, \
    objection_property_taxes, holders_exchange, standing_order_request, permit_information, planning_information, \
    freedom_info, improvement_tax, tabo_online, exemption_volunteer_institution, exemption_empty_property, \
    direct_contact_to_assessment

log = logger.get_logger(__name__)
rep = reporter.get_reporter()


class ScreensFactory(object):
    """Class handles all screens objects creation, which was taken out from all scripts.
    Holds a list of available objects already exists, and maintains this list according to test progress."""

    def __init__(self):
        self.screens = {}

    def create_screen(self, objects_list=None, store_screen=True, force_create=False, driver=None):
        """function gets a list of all objects to create
            sets all required params, create the object, if not already in self.
            apps, and add it to this list if necessary.
            Returns the objects list back to the script for its use of running a test.
            objects_list: the screens list
            store_screen: if you want to save it in the dict
            force_create:force to create it"""

        screens_dict = {
            'ConfirmationForStructure': confirmation_for_structure.ConfirmationForStructure,
            'PlaceContainer': place_container.PlaceContainer,
            'ContractorEmpRights': contractor_emp_rights.ContractorEmpRights,
            'CollectiveLifeInsurance': collective_life_insurance.CollectiveLifeInsurance,
            'TransferDogOwnership': transfer_dog_ownership.TransferDogOwnership,
            'BetterTaxPtor': better_tax_ptor.BetterTaxPtor,
            'PhotoPermission': photo_permission.PhotoPermission,
            'EmailRegistration': email_registration.EmailRegistration,
            'TreeCut': tree_cut.TreeCut,
            'ObjectionPropertyTaxes': objection_property_taxes.ObjectionPropertyTaxes,
            'HoldersExchange': holders_exchange.HoldersExchange,
            'StandingOrderRequest': standing_order_request.StandingOrderRequest,
            'PermitInformation': permit_information.PermitInformation,
            'PlanningInformation': planning_information.PlanningInformation,
            'FreedomInfo': freedom_info.FreedomInfo,
            'ImprovementTax': improvement_tax.ImprovementTax,
            'TaboOnline': tabo_online.TaboOnline,
            'ExemptionVolunteerInstitution': exemption_volunteer_institution.ExemptionVolunteerInstitution,
            'ExemptionEmptyProperty': exemption_empty_property.ExemptionEmptyProperty,
            'DirectContactToAssessment': direct_contact_to_assessment.DirectContactToAssessment,
        }

        screens = []
        for screen_name in objects_list:
            """Creating new object
            if the screen that we want to create is not in the dict, 
            or it's not in the force create list then create it again"""
            if screen_name not in self.screens.keys() or force_create:
                log.info('-' * 150)
                log.info('Creating %s screen obj' % screen_name)
                screen = screens_dict[screen_name](driver)
                # if store_screen is true then save it in the screen dict
                if store_screen:
                    # example : 'ConfirmationForStructure': confirmation_for_structure.ConfirmationForStructure,
                    self.screens = {screen_name: screen}
            # Getting existing object from list
            else:
                screen = self.screens[screen_name]

            # Setting list of objects to return
            if screen is not None:
                screens.append(screen)

        if len(screens) == 1:
            return screens[0]
        return screens
