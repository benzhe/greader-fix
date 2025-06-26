package org.jsoup.parser;

import defpackage.jo;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;

/* loaded from: classes2.dex */
public class XmlTreeBuilder extends TreeBuilder {

    /* renamed from: org.jsoup.parser.XmlTreeBuilder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            Token.TokenType.values();
            int[] iArr = new int[6];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                Token.TokenType tokenType = Token.TokenType.StartTag;
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType2 = Token.TokenType.EndTag;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType3 = Token.TokenType.Comment;
                iArr3[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType4 = Token.TokenType.Character;
                iArr4[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$org$jsoup$parser$Token$TokenType;
                Token.TokenType tokenType5 = Token.TokenType.Doctype;
                iArr5[0] = 5;
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

    private void insertNode(Node node) {
        currentElement().appendChild(node);
    }

    private void popStackToClose(Token.EndTag endTag) {
        Element element;
        String strNormalizeTag = this.settings.normalizeTag(endTag.tagName);
        int size = this.stack.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = this.stack.get(size);
            if (element.nodeName().equals(strNormalizeTag)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.stack.size() - 1; size2 >= 0; size2--) {
            Element element2 = this.stack.get(size2);
            this.stack.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    public ParseSettings defaultSettings() {
        return ParseSettings.preserveCase;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public void initialiseParse(Reader reader, String str, Parser parser) {
        super.initialiseParse(reader, str, parser);
        this.stack.add(this.doc);
        this.doc.outputSettings().syntax(Document.OutputSettings.Syntax.xml);
    }

    public Element insert(Token.StartTag startTag) {
        Tag tagValueOf = Tag.valueOf(startTag.name(), this.settings);
        Attributes attributes = startTag.attributes;
        if (attributes != null) {
            attributes.deduplicate(this.settings);
        }
        Element element = new Element(tagValueOf, null, this.settings.normalizeAttributes(startTag.attributes));
        insertNode(element);
        if (!startTag.isSelfClosing()) {
            this.stack.add(element);
        } else if (!tagValueOf.isKnownTag()) {
            tagValueOf.setSelfClosing();
        }
        return element;
    }

    public Document parse(Reader reader, String str) {
        return parse(reader, str, new Parser(this));
    }

    public List<Node> parseFragment(String str, String str2, Parser parser) {
        initialiseParse(new StringReader(str), str2, parser);
        runParser();
        return this.doc.childNodes();
    }

    @Override // org.jsoup.parser.TreeBuilder
    public boolean process(Token token) {
        int iOrdinal = token.type.ordinal();
        if (iOrdinal == 0) {
            insert(token.asDoctype());
        } else if (iOrdinal == 1) {
            insert(token.asStartTag());
        } else if (iOrdinal == 2) {
            popStackToClose(token.asEndTag());
        } else if (iOrdinal == 3) {
            insert(token.asComment());
        } else if (iOrdinal == 4) {
            insert(token.asCharacter());
        } else if (iOrdinal != 5) {
            StringBuilder sbZ = jo.z("Unexpected token type: ");
            sbZ.append(token.type);
            Validate.fail(sbZ.toString());
        }
        return true;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    public Document parse(String str, String str2) {
        return parse(new StringReader(str), str2, new Parser(this));
    }

    @Override // org.jsoup.parser.TreeBuilder
    public List<Node> parseFragment(String str, Element element, String str2, Parser parser) {
        return parseFragment(str, str2, parser);
    }

    public void insert(Token.Comment comment) {
        XmlDeclaration xmlDeclarationAsXmlDeclaration;
        Comment comment2 = new Comment(comment.getData());
        if (comment.bogus && comment2.isXmlDeclaration() && (xmlDeclarationAsXmlDeclaration = comment2.asXmlDeclaration()) != null) {
            comment2 = xmlDeclarationAsXmlDeclaration;
        }
        insertNode(comment2);
    }

    public void insert(Token.Character character) {
        String data = character.getData();
        insertNode(character.isCData() ? new CDataNode(data) : new TextNode(data));
    }

    public void insert(Token.Doctype doctype) {
        DocumentType documentType = new DocumentType(this.settings.normalizeTag(doctype.getName()), doctype.getPublicIdentifier(), doctype.getSystemIdentifier());
        documentType.setPubSysKey(doctype.getPubSysKey());
        insertNode(documentType);
    }
}
