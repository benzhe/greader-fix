package org.jsoup.parser;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;

/* loaded from: classes2.dex */
public enum HtmlTreeBuilderState {
    Initial { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (!token.isDoctype()) {
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
                    return htmlTreeBuilder.process(token);
                }
                Token.Doctype doctypeAsDoctype = token.asDoctype();
                DocumentType documentType = new DocumentType(htmlTreeBuilder.settings.normalizeTag(doctypeAsDoctype.getName()), doctypeAsDoctype.getPublicIdentifier(), doctypeAsDoctype.getSystemIdentifier());
                documentType.setPubSysKey(doctypeAsDoctype.getPubSysKey());
                htmlTreeBuilder.getDocument().appendChild(documentType);
                if (doctypeAsDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
            }
            return true;
        }
    },
    BeforeHtml { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag(AtomText.TYPE_HTML);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML)) {
                htmlTreeBuilder.insert(token.asStartTag());
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
                return true;
            }
            if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.BeforeHtmlToHead)) {
                return anythingElse(token, htmlTreeBuilder);
            }
            if (!token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    BeforeHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML)) {
                return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("head")) {
                htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.BeforeHtmlToHead)) {
                htmlTreeBuilder.processStartTag("head");
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.processStartTag("head");
            return htmlTreeBuilder.process(token);
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag("head");
            return treeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int iOrdinal = token.type.ordinal();
            if (iOrdinal == 0) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (iOrdinal == 1) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals(AtomText.TYPE_HTML)) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (StringUtil.inSorted(strNormalName, Constants.InHeadEmpty)) {
                    Element elementInsertEmpty = htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    if (strNormalName.equals("base") && elementInsertEmpty.hasAttr(NSSimpleChapters.HREF)) {
                        htmlTreeBuilder.maybeSetBaseUri(elementInsertEmpty);
                    }
                } else if (strNormalName.equals("meta")) {
                    htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                } else if (strNormalName.equals("title")) {
                    HtmlTreeBuilderState.handleRcData(startTagAsStartTag, htmlTreeBuilder);
                } else if (StringUtil.inSorted(strNormalName, Constants.InHeadRaw)) {
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                } else if (strNormalName.equals("noscript")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InHeadNoscript);
                } else {
                    if (!strNormalName.equals(StringLookupFactory.KEY_SCRIPT)) {
                        if (!strNormalName.equals("head")) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                    htmlTreeBuilder.markInsertionMode();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                    htmlTreeBuilder.insert(startTagAsStartTag);
                }
            } else if (iOrdinal == 2) {
                String strNormalName2 = token.asEndTag().normalName();
                if (!strNormalName2.equals("head")) {
                    if (StringUtil.inSorted(strNormalName2, Constants.InHeadEnd)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterHead);
            } else {
                if (iOrdinal != 3) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Token.Character().data(token.toString()));
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("noscript")) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InHeadNoScriptHead))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("br")) {
                return anythingElse(token, htmlTreeBuilder);
            }
            if ((!token.isStartTag() || !StringUtil.inSorted(token.asStartTag().normalName(), Constants.InHeadNoscriptIgnore)) && !token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag("body");
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (!token.isStartTag()) {
                if (!token.isEndTag()) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                if (StringUtil.inSorted(token.asEndTag().normalName(), Constants.AfterHeadBody)) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName = startTagAsStartTag.normalName();
            if (strNormalName.equals(AtomText.TYPE_HTML)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (strNormalName.equals("body")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                return true;
            }
            if (strNormalName.equals("frameset")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (!StringUtil.inSorted(strNormalName, Constants.InBodyStartToHead)) {
                if (strNormalName.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
            htmlTreeBuilder.error(this);
            Element headElement = htmlTreeBuilder.getHeadElement();
            htmlTreeBuilder.push(headElement);
            htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            htmlTreeBuilder.removeFromStack(headElement);
            return true;
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private boolean inBodyEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token.EndTag endTagAsEndTag = token.asEndTag();
            String strNormalName = endTagAsEndTag.normalName();
            strNormalName.hashCode();
            char c = 65535;
            switch (strNormalName.hashCode()) {
                case 112:
                    if (strNormalName.equals("p")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3152:
                    if (strNormalName.equals("br")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3200:
                    if (strNormalName.equals("dd")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3216:
                    if (strNormalName.equals("dt")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3273:
                    if (strNormalName.equals("h1")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3274:
                    if (strNormalName.equals("h2")) {
                        c = 5;
                        break;
                    }
                    break;
                case 3275:
                    if (strNormalName.equals("h3")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3276:
                    if (strNormalName.equals("h4")) {
                        c = 7;
                        break;
                    }
                    break;
                case 3277:
                    if (strNormalName.equals("h5")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 3278:
                    if (strNormalName.equals("h6")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 3453:
                    if (strNormalName.equals("li")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 3029410:
                    if (strNormalName.equals("body")) {
                        c = 11;
                        break;
                    }
                    break;
                case 3148996:
                    if (strNormalName.equals("form")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 3213227:
                    if (strNormalName.equals(AtomText.TYPE_HTML)) {
                        c = CharUtils.CR;
                        break;
                    }
                    break;
                case 3536714:
                    if (strNormalName.equals("span")) {
                        c = 14;
                        break;
                    }
                    break;
                case 1869063452:
                    if (strNormalName.equals("sarcasm")) {
                        c = 15;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (!htmlTreeBuilder.inButtonScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processStartTag(strNormalName);
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 1:
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.processStartTag("br");
                    return false;
                case 2:
                case 3:
                    if (!htmlTreeBuilder.inScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                    String[] strArr = Constants.Headings;
                    if (!htmlTreeBuilder.inScope(strArr)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strArr);
                    return true;
                case '\n':
                    if (!htmlTreeBuilder.inListItemScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 11:
                    if (htmlTreeBuilder.inScope("body")) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterBody);
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                case '\f':
                    FormElement formElement = htmlTreeBuilder.getFormElement();
                    htmlTreeBuilder.setFormElement(null);
                    if (formElement == null || !htmlTreeBuilder.inScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.removeFromStack(formElement);
                    return true;
                case '\r':
                    if (htmlTreeBuilder.processEndTag("body")) {
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    return true;
                case 14:
                case 15:
                    return anyOtherEndTag(token, htmlTreeBuilder);
                default:
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyEndAdoptionFormatters)) {
                        return inBodyEndTagAdoption(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyEndClosers)) {
                        if (!htmlTreeBuilder.inScope(strNormalName)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(strNormalName);
                    } else {
                        if (!StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                            return anyOtherEndTag(token, htmlTreeBuilder);
                        }
                        if (!htmlTreeBuilder.inScope(InetAddressKeys.KEY_NAME)) {
                            if (!htmlTreeBuilder.inScope(strNormalName)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName);
                            htmlTreeBuilder.clearFormattingElementsToLastMarker();
                        }
                    }
                    return true;
            }
        }

        private boolean inBodyEndTagAdoption(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String strNormalName = token.asEndTag().normalName();
            ArrayList<Element> stack = htmlTreeBuilder.getStack();
            for (int i = 0; i < 8; i++) {
                Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(strNormalName);
                if (activeFormattingElement == null) {
                    return anyOtherEndTag(token, htmlTreeBuilder);
                }
                if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                    return true;
                }
                if (!htmlTreeBuilder.inScope(activeFormattingElement.normalName())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                    htmlTreeBuilder.error(this);
                }
                int size = stack.size();
                Element element = null;
                Element element2 = null;
                int i2 = 0;
                boolean z = false;
                while (true) {
                    if (i2 >= size || i2 >= 64) {
                        break;
                    }
                    Element element3 = stack.get(i2);
                    if (element3 != activeFormattingElement) {
                        if (z && htmlTreeBuilder.isSpecial(element3)) {
                            element = element3;
                            break;
                        }
                    } else {
                        element2 = stack.get(i2 - 1);
                        z = true;
                    }
                    i2++;
                }
                if (element == null) {
                    htmlTreeBuilder.popStackToClose(activeFormattingElement.normalName());
                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                    return true;
                }
                Element elementAboveOnStack = element;
                Element element4 = elementAboveOnStack;
                for (int i3 = 0; i3 < 3; i3++) {
                    if (htmlTreeBuilder.onStack(elementAboveOnStack)) {
                        elementAboveOnStack = htmlTreeBuilder.aboveOnStack(elementAboveOnStack);
                    }
                    if (!htmlTreeBuilder.isInActiveFormattingElements(elementAboveOnStack)) {
                        htmlTreeBuilder.removeFromStack(elementAboveOnStack);
                    } else {
                        if (elementAboveOnStack == activeFormattingElement) {
                            break;
                        }
                        Element element5 = new Element(Tag.valueOf(elementAboveOnStack.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                        htmlTreeBuilder.replaceActiveFormattingElement(elementAboveOnStack, element5);
                        htmlTreeBuilder.replaceOnStack(elementAboveOnStack, element5);
                        if (element4.parent() != null) {
                            element4.remove();
                        }
                        element5.appendChild(element4);
                        elementAboveOnStack = element5;
                        element4 = elementAboveOnStack;
                    }
                }
                if (StringUtil.inSorted(element2.normalName(), Constants.InBodyEndTableFosters)) {
                    if (element4.parent() != null) {
                        element4.remove();
                    }
                    htmlTreeBuilder.insertInFosterParent(element4);
                } else {
                    if (element4.parent() != null) {
                        element4.remove();
                    }
                    element2.appendChild(element4);
                }
                Element element6 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                element6.attributes().addAll(activeFormattingElement.attributes());
                for (Node node : (Node[]) element.childNodes().toArray(new Node[0])) {
                    element6.appendChild(node);
                }
                element.appendChild(element6);
                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                htmlTreeBuilder.removeFromStack(activeFormattingElement);
                htmlTreeBuilder.insertOnStackAfter(element, element6);
            }
            return true;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private boolean inBodyStartTag(Token token, HtmlTreeBuilder htmlTreeBuilder) throws IOException {
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName = startTagAsStartTag.normalName();
            strNormalName.hashCode();
            char c = 65535;
            switch (strNormalName.hashCode()) {
                case -1644953643:
                    if (strNormalName.equals("frameset")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1377687758:
                    if (strNormalName.equals("button")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1191214428:
                    if (strNormalName.equals("iframe")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1010136971:
                    if (strNormalName.equals("option")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1003243718:
                    if (strNormalName.equals("textarea")) {
                        c = 4;
                        break;
                    }
                    break;
                case -906021636:
                    if (strNormalName.equals("select")) {
                        c = 5;
                        break;
                    }
                    break;
                case -80773204:
                    if (strNormalName.equals("optgroup")) {
                        c = 6;
                        break;
                    }
                    break;
                case 97:
                    if (strNormalName.equals("a")) {
                        c = 7;
                        break;
                    }
                    break;
                case 3200:
                    if (strNormalName.equals("dd")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 3216:
                    if (strNormalName.equals("dt")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 3273:
                    if (strNormalName.equals("h1")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 3274:
                    if (strNormalName.equals("h2")) {
                        c = 11;
                        break;
                    }
                    break;
                case 3275:
                    if (strNormalName.equals("h3")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 3276:
                    if (strNormalName.equals("h4")) {
                        c = CharUtils.CR;
                        break;
                    }
                    break;
                case 3277:
                    if (strNormalName.equals("h5")) {
                        c = 14;
                        break;
                    }
                    break;
                case 3278:
                    if (strNormalName.equals("h6")) {
                        c = 15;
                        break;
                    }
                    break;
                case 3338:
                    if (strNormalName.equals("hr")) {
                        c = 16;
                        break;
                    }
                    break;
                case 3453:
                    if (strNormalName.equals("li")) {
                        c = 17;
                        break;
                    }
                    break;
                case 3646:
                    if (strNormalName.equals("rp")) {
                        c = 18;
                        break;
                    }
                    break;
                case 3650:
                    if (strNormalName.equals("rt")) {
                        c = 19;
                        break;
                    }
                    break;
                case 111267:
                    if (strNormalName.equals("pre")) {
                        c = 20;
                        break;
                    }
                    break;
                case 114276:
                    if (strNormalName.equals("svg")) {
                        c = 21;
                        break;
                    }
                    break;
                case 118811:
                    if (strNormalName.equals("xmp")) {
                        c = 22;
                        break;
                    }
                    break;
                case 3029410:
                    if (strNormalName.equals("body")) {
                        c = 23;
                        break;
                    }
                    break;
                case 3148996:
                    if (strNormalName.equals("form")) {
                        c = 24;
                        break;
                    }
                    break;
                case 3213227:
                    if (strNormalName.equals(AtomText.TYPE_HTML)) {
                        c = 25;
                        break;
                    }
                    break;
                case 3344136:
                    if (strNormalName.equals("math")) {
                        c = 26;
                        break;
                    }
                    break;
                case 3386833:
                    if (strNormalName.equals("nobr")) {
                        c = 27;
                        break;
                    }
                    break;
                case 3536714:
                    if (strNormalName.equals("span")) {
                        c = 28;
                        break;
                    }
                    break;
                case 100313435:
                    if (strNormalName.equals(NSRSS20.IMAGE)) {
                        c = 29;
                        break;
                    }
                    break;
                case 100358090:
                    if (strNormalName.equals("input")) {
                        c = 30;
                        break;
                    }
                    break;
                case 110115790:
                    if (strNormalName.equals("table")) {
                        c = 31;
                        break;
                    }
                    break;
                case 181975684:
                    if (strNormalName.equals("listing")) {
                        c = ' ';
                        break;
                    }
                    break;
                case 1973234167:
                    if (strNormalName.equals("plaintext")) {
                        c = '!';
                        break;
                    }
                    break;
                case 2091304424:
                    if (strNormalName.equals("isindex")) {
                        c = '\"';
                        break;
                    }
                    break;
                case 2115613112:
                    if (strNormalName.equals("noembed")) {
                        c = '#';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    htmlTreeBuilder.error(this);
                    ArrayList<Element> stack = htmlTreeBuilder.getStack();
                    if (stack.size() == 1 || ((stack.size() > 2 && !stack.get(1).normalName().equals("body")) || !htmlTreeBuilder.framesetOk())) {
                        return false;
                    }
                    Element element = stack.get(1);
                    if (element.parent() != null) {
                        element.remove();
                    }
                    while (stack.size() > 1) {
                        stack.remove(stack.size() - 1);
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                    return true;
                case 1:
                    if (htmlTreeBuilder.inButtonScope("button")) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("button");
                        htmlTreeBuilder.process(startTagAsStartTag);
                        return true;
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    return true;
                case 2:
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    return true;
                case 3:
                case 6:
                    if (htmlTreeBuilder.currentElement().normalName().equals("option")) {
                        htmlTreeBuilder.processEndTag("option");
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 4:
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    if (!startTagAsStartTag.isSelfClosing()) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.framesetOk(false);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                    }
                    return true;
                case 5:
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState htmlTreeBuilderStateState = htmlTreeBuilder.state();
                    if (htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCell)) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelectInTable);
                    } else {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelect);
                    }
                    return true;
                case 7:
                    if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("a");
                        Element fromStack = htmlTreeBuilder.getFromStack("a");
                        if (fromStack != null) {
                            htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                            htmlTreeBuilder.removeFromStack(fromStack);
                        }
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                    return true;
                case '\b':
                case '\t':
                    htmlTreeBuilder.framesetOk(false);
                    ArrayList<Element> stack2 = htmlTreeBuilder.getStack();
                    int size = stack2.size() - 1;
                    while (true) {
                        if (size > 0) {
                            Element element2 = stack2.get(size);
                            if (StringUtil.inSorted(element2.normalName(), Constants.DdDt)) {
                                htmlTreeBuilder.processEndTag(element2.normalName());
                            } else if (!htmlTreeBuilder.isSpecial(element2) || StringUtil.inSorted(element2.normalName(), Constants.InBodyStartLiBreakers)) {
                                size--;
                            }
                        }
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.Headings)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.pop();
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 16:
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    return true;
                case 17:
                    htmlTreeBuilder.framesetOk(false);
                    ArrayList<Element> stack3 = htmlTreeBuilder.getStack();
                    int size2 = stack3.size() - 1;
                    while (true) {
                        if (size2 > 0) {
                            Element element3 = stack3.get(size2);
                            if (element3.normalName().equals("li")) {
                                htmlTreeBuilder.processEndTag("li");
                            } else if (!htmlTreeBuilder.isSpecial(element3) || StringUtil.inSorted(element3.normalName(), Constants.InBodyStartLiBreakers)) {
                                size2--;
                            }
                        }
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 18:
                case 19:
                    if (htmlTreeBuilder.inScope("ruby")) {
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().normalName().equals("ruby")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.popStackToBefore("ruby");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    }
                    return true;
                case 20:
                case ' ':
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.reader.matchConsume("\n");
                    htmlTreeBuilder.framesetOk(false);
                    return true;
                case 21:
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 22:
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    return true;
                case 23:
                    htmlTreeBuilder.error(this);
                    ArrayList<Element> stack4 = htmlTreeBuilder.getStack();
                    if (stack4.size() == 1 || (stack4.size() > 2 && !stack4.get(1).normalName().equals("body"))) {
                        return false;
                    }
                    htmlTreeBuilder.framesetOk(false);
                    Element element4 = stack4.get(1);
                    Iterator<Attribute> it = startTagAsStartTag.getAttributes().iterator();
                    while (it.hasNext()) {
                        Attribute next = it.next();
                        if (!element4.hasAttr(next.getKey())) {
                            element4.attributes().put(next);
                        }
                    }
                    return true;
                case 24:
                    if (htmlTreeBuilder.getFormElement() != null) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insertForm(startTagAsStartTag, true);
                    return true;
                case 25:
                    htmlTreeBuilder.error(this);
                    Element element5 = htmlTreeBuilder.getStack().get(0);
                    Iterator<Attribute> it2 = startTagAsStartTag.getAttributes().iterator();
                    while (it2.hasNext()) {
                        Attribute next2 = it2.next();
                        if (!element5.hasAttr(next2.getKey())) {
                            element5.attributes().put(next2);
                        }
                    }
                    return true;
                case 26:
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 27:
                    htmlTreeBuilder.reconstructFormattingElements();
                    if (htmlTreeBuilder.inScope("nobr")) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("nobr");
                        htmlTreeBuilder.reconstructFormattingElements();
                    }
                    htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                    return true;
                case 28:
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 29:
                    if (htmlTreeBuilder.getFromStack("svg") == null) {
                        return htmlTreeBuilder.process(startTagAsStartTag.name("img"));
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                case 30:
                    htmlTreeBuilder.reconstructFormattingElements();
                    if (!htmlTreeBuilder.insertEmpty(startTagAsStartTag).attr(NSRSS20.ENC_TYPE).equalsIgnoreCase("hidden")) {
                        htmlTreeBuilder.framesetOk(false);
                    }
                    return true;
                case 31:
                    if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                    return true;
                case '!':
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                    return true;
                case '\"':
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.getFormElement() != null) {
                        return false;
                    }
                    htmlTreeBuilder.processStartTag("form");
                    if (startTagAsStartTag.attributes.hasKey("action")) {
                        htmlTreeBuilder.getFormElement().attr("action", startTagAsStartTag.attributes.get("action"));
                    }
                    htmlTreeBuilder.processStartTag("hr");
                    htmlTreeBuilder.processStartTag("label");
                    htmlTreeBuilder.process(new Token.Character().data(startTagAsStartTag.attributes.hasKey("prompt") ? startTagAsStartTag.attributes.get("prompt") : "This is a searchable index. Enter search keywords: "));
                    Attributes attributes = new Attributes();
                    Iterator<Attribute> it3 = startTagAsStartTag.attributes.iterator();
                    while (it3.hasNext()) {
                        Attribute next3 = it3.next();
                        if (!StringUtil.inSorted(next3.getKey(), Constants.InBodyStartInputAttribs)) {
                            attributes.put(next3);
                        }
                    }
                    attributes.put(InetAddressKeys.KEY_NAME, "isindex");
                    htmlTreeBuilder.processStartTag("input", attributes);
                    htmlTreeBuilder.processEndTag("label");
                    htmlTreeBuilder.processStartTag("hr");
                    htmlTreeBuilder.processEndTag("form");
                    return true;
                case '#':
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    return true;
                default:
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyStartEmptyFormatters)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        htmlTreeBuilder.framesetOk(false);
                    } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartPClosers)) {
                        if (htmlTreeBuilder.inButtonScope("p")) {
                            htmlTreeBuilder.processEndTag("p");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (StringUtil.inSorted(strNormalName, Constants.InBodyStartToHead)) {
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                        }
                        if (StringUtil.inSorted(strNormalName, Constants.Formatters)) {
                            htmlTreeBuilder.reconstructFormattingElements();
                            htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                        } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                            htmlTreeBuilder.reconstructFormattingElements();
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            htmlTreeBuilder.insertMarkerToFormattingElements();
                            htmlTreeBuilder.framesetOk(false);
                        } else {
                            if (!StringUtil.inSorted(strNormalName, Constants.InBodyStartMedia)) {
                                if (StringUtil.inSorted(strNormalName, Constants.InBodyStartDrop)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                return true;
                            }
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        }
                    }
                    return true;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean anyOtherEndTag(org.jsoup.parser.Token r6, org.jsoup.parser.HtmlTreeBuilder r7) {
            /*
                r5 = this;
                org.jsoup.parser.Token$EndTag r6 = r6.asEndTag()
                java.lang.String r6 = r6.normalName
                java.util.ArrayList r0 = r7.getStack()
                int r1 = r0.size()
                r2 = 1
                int r1 = r1 - r2
            L10:
                if (r1 < 0) goto L48
                java.lang.Object r3 = r0.get(r1)
                org.jsoup.nodes.Element r3 = (org.jsoup.nodes.Element) r3
                java.lang.String r4 = r3.normalName()
                boolean r4 = r4.equals(r6)
                if (r4 == 0) goto L3a
                r7.generateImpliedEndTags(r6)
                org.jsoup.nodes.Element r0 = r7.currentElement()
                java.lang.String r0 = r0.normalName()
                boolean r0 = r6.equals(r0)
                if (r0 != 0) goto L36
                r7.error(r5)
            L36:
                r7.popStackToClose(r6)
                goto L48
            L3a:
                boolean r3 = r7.isSpecial(r3)
                if (r3 == 0) goto L45
                r7.error(r5)
                r6 = 0
                return r6
            L45:
                int r1 = r1 + (-1)
                goto L10
            L48:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass7.anyOtherEndTag(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int iOrdinal = token.type.ordinal();
            if (iOrdinal == 0) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (iOrdinal == 1) {
                return inBodyStartTag(token, htmlTreeBuilder);
            }
            if (iOrdinal == 2) {
                return inBodyEndTag(token, htmlTreeBuilder);
            }
            if (iOrdinal == 3) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (iOrdinal == 4) {
                Token.Character characterAsCharacter = token.asCharacter();
                if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (htmlTreeBuilder.framesetOk() && HtmlTreeBuilderState.isWhitespace(characterAsCharacter)) {
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(characterAsCharacter);
                } else {
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(characterAsCharacter);
                    htmlTreeBuilder.framesetOk(false);
                }
            }
            return true;
        }
    },
    Text { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag()) {
                return true;
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return true;
        }
    },
    InTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
        public boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (!StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.InTableFoster)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            htmlTreeBuilder.setFosterInserts(true);
            boolean zProcess = htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            htmlTreeBuilder.setFosterInserts(false);
            return zProcess;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableText);
                return htmlTreeBuilder.process(token);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isStartTag()) {
                if (!token.isEndTag()) {
                    if (!token.isEOF()) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().normalName().equals(AtomText.TYPE_HTML)) {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
                }
                String strNormalName = token.asEndTag().normalName();
                if (!strNormalName.equals("table")) {
                    if (!StringUtil.inSorted(strNormalName, Constants.InTableEndErr)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.popStackToClose("table");
                htmlTreeBuilder.resetInsertionMode();
                return true;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName2 = startTagAsStartTag.normalName();
            if (strNormalName2.equals("caption")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insertMarkerToFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InCaption);
            } else if (strNormalName2.equals("colgroup")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InColumnGroup);
            } else {
                if (strNormalName2.equals("col")) {
                    htmlTreeBuilder.processStartTag("colgroup");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.inSorted(strNormalName2, Constants.InTableToBody)) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                } else {
                    if (StringUtil.inSorted(strNormalName2, Constants.InTableAddBody)) {
                        htmlTreeBuilder.processStartTag("tbody");
                        return htmlTreeBuilder.process(token);
                    }
                    if (strNormalName2.equals("table")) {
                        htmlTreeBuilder.error(this);
                        if (htmlTreeBuilder.processEndTag("table")) {
                            return htmlTreeBuilder.process(token);
                        }
                    } else {
                        if (StringUtil.inSorted(strNormalName2, Constants.InTableToHead)) {
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                        }
                        if (strNormalName2.equals("input")) {
                            if (!startTagAsStartTag.attributes.get(NSRSS20.ENC_TYPE).equalsIgnoreCase("hidden")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        } else {
                            if (!strNormalName2.equals("form")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.getFormElement() != null) {
                                return false;
                            }
                            htmlTreeBuilder.insertForm(startTagAsStartTag, false);
                        }
                    }
                }
            }
            return true;
        }
    },
    InTableText { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.type == Token.TokenType.Character) {
                Token.Character characterAsCharacter = token.asCharacter();
                if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.getPendingTableCharacters().add(characterAsCharacter.getData());
                return true;
            }
            if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                for (String str : htmlTreeBuilder.getPendingTableCharacters()) {
                    if (HtmlTreeBuilderState.isWhitespace(str)) {
                        htmlTreeBuilder.insert(new Token.Character().data(str));
                    } else {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.InTableFoster)) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                        }
                    }
                }
                htmlTreeBuilder.newPendingTableCharacters();
            }
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return htmlTreeBuilder.process(token);
        }
    },
    InCaption { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().normalName().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().normalName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                return true;
            }
            if ((token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InCellCol)) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.processEndTag("caption")) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            }
            if (!token.isEndTag() || !StringUtil.inSorted(token.asEndTag().normalName(), Constants.InCaptionIgnore)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int iOrdinal = token.type.ordinal();
            if (iOrdinal == 0) {
                htmlTreeBuilder.error(this);
            } else if (iOrdinal == 1) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                strNormalName.hashCode();
                if (!strNormalName.equals("col")) {
                    return !strNormalName.equals(AtomText.TYPE_HTML) ? anythingElse(token, htmlTreeBuilder) : htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
            } else if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 5) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().normalName().equals(AtomText.TYPE_HTML)) {
                        return true;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (!token.asEndTag().normalName.equals("colgroup")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.currentElement().normalName().equals(AtomText.TYPE_HTML)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().normalName());
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int iOrdinal = token.type.ordinal();
            if (iOrdinal == 1) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else {
                    if (!strNormalName.equals("tr")) {
                        if (!StringUtil.inSorted(strNormalName, Constants.InCellNames)) {
                            return StringUtil.inSorted(strNormalName, Constants.InTableBodyExit) ? exitTableBody(token, htmlTreeBuilder) : anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processStartTag("tr");
                        return htmlTreeBuilder.process(startTagAsStartTag);
                    }
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                }
            } else {
                if (iOrdinal != 2) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                String strNormalName2 = token.asEndTag().normalName();
                if (!StringUtil.inSorted(strNormalName2, Constants.InTableEndIgnore)) {
                    if (strNormalName2.equals("table")) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    if (!StringUtil.inSorted(strNormalName2, Constants.InTableBodyEndIgnore)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.clearStackToTableBodyContext();
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            }
            return true;
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("tr")) {
                return treeBuilder.process(token);
            }
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                }
                if (!StringUtil.inSorted(strNormalName, Constants.InCellNames)) {
                    return StringUtil.inSorted(strNormalName, Constants.InRowMissing) ? handleMissingTr(token, htmlTreeBuilder) : anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InCell);
                htmlTreeBuilder.insertMarkerToFormattingElements();
                return true;
            }
            if (!token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            }
            String strNormalName2 = token.asEndTag().normalName();
            if (strNormalName2.equals("tr")) {
                if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                return true;
            }
            if (strNormalName2.equals("table")) {
                return handleMissingTr(token, htmlTreeBuilder);
            }
            if (!StringUtil.inSorted(strNormalName2, Constants.InTableToBody)) {
                if (!StringUtil.inSorted(strNormalName2, Constants.InRowIgnore)) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (htmlTreeBuilder.inTableScope(strNormalName2)) {
                htmlTreeBuilder.processEndTag("tr");
                return htmlTreeBuilder.process(token);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.processEndTag("td");
            } else {
                htmlTreeBuilder.processEndTag("th");
            }
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!token.isEndTag()) {
                if (!token.isStartTag() || !StringUtil.inSorted(token.asStartTag().normalName(), Constants.InCellCol)) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.inTableScope("td") || htmlTreeBuilder.inTableScope("th")) {
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            String strNormalName = token.asEndTag().normalName();
            if (!StringUtil.inSorted(strNormalName, Constants.InCellNames)) {
                if (StringUtil.inSorted(strNormalName, Constants.InCellBody)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!StringUtil.inSorted(strNormalName, Constants.InCellTable)) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (htmlTreeBuilder.inTableScope(strNormalName)) {
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                return false;
            }
            htmlTreeBuilder.generateImpliedEndTags();
            if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                htmlTreeBuilder.error(this);
            }
            htmlTreeBuilder.popStackToClose(strNormalName);
            htmlTreeBuilder.clearFormattingElementsToLastMarker();
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
            return true;
        }
    },
    InSelect { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean process(org.jsoup.parser.Token r10, org.jsoup.parser.HtmlTreeBuilder r11) {
            /*
                Method dump skipped, instructions count: 434
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass16.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }
    },
    InSelectInTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InSelecTableEnd)) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag() || !StringUtil.inSorted(token.asEndTag().normalName(), Constants.InSelecTableEnd)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InSelect);
            }
            htmlTreeBuilder.error(this);
            if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                return false;
            }
            htmlTreeBuilder.processEndTag("select");
            return htmlTreeBuilder.process(token);
        }
    },
    AfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals(AtomText.TYPE_HTML)) {
                if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterBody);
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    InFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token.StartTag startTagAsStartTag;
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag()) {
                    startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    strNormalName.hashCode();
                    switch (strNormalName) {
                        case "frameset":
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            break;
                        case "html":
                            return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                        case "frame":
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            break;
                        case "noframes":
                            return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InHead);
                        default:
                            htmlTreeBuilder.error(this);
                            return false;
                    }
                } else if (token.isEndTag() && token.asEndTag().normalName().equals("frameset")) {
                    if (htmlTreeBuilder.currentElement().normalName().equals(AtomText.TYPE_HTML)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().normalName().equals("frameset")) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterFrameset);
                    }
                } else {
                    if (!token.isEOF()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (!htmlTreeBuilder.currentElement().normalName().equals(AtomText.TYPE_HTML)) {
                        htmlTreeBuilder.error(this);
                    }
                }
            }
            return true;
        }
    },
    AfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals(AtomText.TYPE_HTML)) {
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterFrameset);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterAfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                Element elementPopStackToClose = htmlTreeBuilder.popStackToClose(AtomText.TYPE_HTML);
                htmlTreeBuilder.insert(token.asCharacter());
                htmlTreeBuilder.stack.add(elementPopStackToClose);
                htmlTreeBuilder.stack.add(elementPopStackToClose.selectFirst("body"));
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals(AtomText.TYPE_HTML))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };

    private static final String nullString = String.valueOf((char) 0);

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$24, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass24 {
        public static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            Token.TokenType.values();
            int[] iArr = new int[6];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                Token.TokenType tokenType = Token.TokenType.Comment;
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType2 = Token.TokenType.Doctype;
                iArr2[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType3 = Token.TokenType.StartTag;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType4 = Token.TokenType.EndTag;
                iArr4[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType5 = Token.TokenType.Character;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType6 = Token.TokenType.EOF;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class Constants {
        public static final String[] InHeadEmpty = {"base", "basefont", "bgsound", "command", NSRSS20.LINK};
        public static final String[] InHeadRaw = {"noframes", "style"};
        public static final String[] InHeadEnd = {"body", "br", AtomText.TYPE_HTML};
        public static final String[] AfterHeadBody = {"body", AtomText.TYPE_HTML};
        public static final String[] BeforeHtmlToHead = {"body", "br", "head", AtomText.TYPE_HTML};
        public static final String[] InHeadNoScriptHead = {"basefont", "bgsound", NSRSS20.LINK, "meta", "noframes", "style"};
        public static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", NSRSS20.LINK, "meta", "noframes", StringLookupFactory.KEY_SCRIPT, "style", "title"};
        public static final String[] InBodyStartPClosers = {InetAddressKeys.KEY_ADDRESS, "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        public static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        public static final String[] InBodyStartLiBreakers = {InetAddressKeys.KEY_ADDRESS, "div", "p"};
        public static final String[] DdDt = {"dd", "dt"};
        public static final String[] Formatters = {"b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};
        public static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        public static final String[] InBodyStartEmptyFormatters = {"area", "br", "embed", "img", "keygen", "wbr"};
        public static final String[] InBodyStartMedia = {"param", "source", "track"};
        public static final String[] InBodyStartInputAttribs = {"action", InetAddressKeys.KEY_NAME, "prompt"};
        public static final String[] InBodyStartDrop = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InBodyEndClosers = {InetAddressKeys.KEY_ADDRESS, "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] InBodyEndAdoptionFormatters = {"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        public static final String[] InBodyEndTableFosters = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InTableToBody = {"tbody", "tfoot", "thead"};
        public static final String[] InTableAddBody = {"td", "th", "tr"};
        public static final String[] InTableToHead = {StringLookupFactory.KEY_SCRIPT, "style"};
        public static final String[] InCellNames = {"td", "th"};
        public static final String[] InCellBody = {"body", "caption", "col", "colgroup", AtomText.TYPE_HTML};
        public static final String[] InCellTable = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InCellCol = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableEndErr = {"body", "caption", "col", "colgroup", AtomText.TYPE_HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableFoster = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InTableBodyExit = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] InTableBodyEndIgnore = {"body", "caption", "col", "colgroup", AtomText.TYPE_HTML, "td", "th", "tr"};
        public static final String[] InRowMissing = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InRowIgnore = {"body", "caption", "col", "colgroup", AtomText.TYPE_HTML, "td", "th"};
        public static final String[] InSelectEnd = {"input", "keygen", "textarea"};
        public static final String[] InSelecTableEnd = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableEndIgnore = {"tbody", "tfoot", "thead"};
        public static final String[] InHeadNoscriptIgnore = {"head", "noscript"};
        public static final String[] InCaptionIgnore = {"body", "col", "colgroup", AtomText.TYPE_HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return StringUtil.isBlank(token.asCharacter().getData());
        }
        return false;
    }

    public abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        return StringUtil.isBlank(str);
    }
}
