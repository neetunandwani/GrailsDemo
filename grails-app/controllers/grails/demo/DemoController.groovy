package grails.demo

class DemoController {

    def index() {
        Map personInfo = [:]
        personInfo = addPeterInfo(personInfo)
        personInfo = addAndersInfo(personInfo)
        // We are passing data to viewLayer in key-value format but we can change the format according to requirment
        render(view: 'index', model: [personInfo: personInfo])
    }

    private Map addPeterInfo(Map map) {
        map.'peter' = ['name'       : 'Peter Ousbäck',
                       'imgName'    : 'peter.e6390e101fa8c24f.jpg',
                       'designation': 'Utvecklingschef',
                       'phone'      : '+46 (0)76 858 88 51',
                       'email'      : 'peter.ousback@egreement.com',
                       'about'      : 'Utveckling och teknik – det är jag. Utanför jobbet är jag ofta vid sommarstugan med något verktyg i handen.',
                       'customClass': 'eGPush0 ePr']
        map
    }

    private Map addAndersInfo(Map map) {
        map.'anders' = ['name'       : 'Andrés Küchler',
                        'imgName'    : 'andres.7106da46ca300968.jpg',
                        'designation': 'Kundansvarig',
                        'phone'      : '+46 (0)73 817 11 10',
                        'email'      : 'andres.kuchler@egreement.com',
                        'about'      : 'Jag gillar den personliga relationen i mötet med kunder.',
                        'customClass': 'eGPush6 ePl']
        return map
    }
}
