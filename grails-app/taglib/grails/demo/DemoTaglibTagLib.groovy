package grails.demo

class DemoTaglibTagLib {
    static defaultEncodeAs = [taglib: 'raw']
    static namespace = "gt"
//    static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def customTag = { attrs, body ->
        String tagBody = "<${attrs.type} "
        attrs.each { key, value ->
            if (key != 'body') {
                tagBody = tagBody + "${key} = '${value}' "
            }
        }
        tagBody = tagBody + "> ${attrs.body ?: body}</${attrs.type}>"
        out << tagBody
    }

}
