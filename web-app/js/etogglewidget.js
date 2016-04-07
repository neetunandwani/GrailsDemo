define(["jquery", "ewidget", "eanimationslib"], function (e, t, n) {
    "use strict";
    var r = t({
        element: ".eToggleContainer",
        dataAttribute: "toggle",
        defaults: {
            animate: "slide",
            animationSpeed: 300,
            ellipsis: "false",
            ellipsisClass: "eEllipsisAfter",
            linklabel1: "Läs mer",
            linklabel2: "Läs mindre",
            reverseclass: "eToggleReverse",
            toggleareaclass: "eToggleA",
            togglecontainerclass: "eToggleC",
            togglelinkclass: "eToggleL"
        },
        events: {"click .eToggleLink": "clickHandler"},
        elements: {$eToggleArea: ".eToggleArea"},
        clickHandler: function (t) {
            var n, r, i, s, o;
            t.stopPropagation(), t.preventDefault(), n = e(t.target), i = e(n).closest(this.element).find(this.$eToggleArea).first(), s = e(n).closest(this.element), this.toggleElements(n, i, s)
        },
        toggleElements: function (t, r, i) {
            var s, o;
            t.toggleClass(this.options.togglelinkclass), r.toggleClass(this.options.toggleareaclass), i.toggleClass(this.options.togglecontainerclass);
            for (var u = 0, a = r.length; u < a; u++) {
                var f = e(r[u]);
                f.hasClass(this.options.toggleareaclass) ? (t.html(this.options.linklabel2), s = !1) : f.hasClass(this.options.toggleareaclass) && f.hasClass(this.options.reverseclass) ? s = !1 : (t.html(this.options.linklabel1), s = !0), this.options.animate === "slide" && (s ? f.slideDown(this.options.animationSpeed) : f.slideUp(this.options.animationSpeed)), this.options.animate === "slideandfade" && (s ? n.slideDownAndFadeIn(f, this.options.animationSpeed) : n.fadeOutAndSlideUp(f, this.options.animationSpeed)), this.options.animate === "fadeInText" && (o = f.text(), f.html(""), n.fadeInText(f, o)), this.options.ellipsis === "true" && f.prev().toggleClass(this.options.ellipsisClass)
            }
        }
    });
    return r
});