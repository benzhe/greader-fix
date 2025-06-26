package org.jsoup.parser;

import defpackage.jo;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attributes;

/* loaded from: classes2.dex */
public abstract class Token {
    public TokenType type;

    public static final class CData extends Character {
        public CData(String str) {
            data(str);
        }

        @Override // org.jsoup.parser.Token.Character
        public String toString() {
            StringBuilder sbZ = jo.z("<![CDATA[");
            sbZ.append(getData());
            sbZ.append("]]>");
            return sbZ.toString();
        }
    }

    public static class Character extends Token {
        private String data;

        public Character() {
            super();
            this.type = TokenType.Character;
        }

        public Character data(String str) {
            this.data = str;
            return this;
        }

        public String getData() {
            return this.data;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            this.data = null;
            return this;
        }

        public String toString() {
            return getData();
        }
    }

    public static final class Doctype extends Token {
        public boolean forceQuirks;
        public final StringBuilder name;
        public String pubSysKey;
        public final StringBuilder publicIdentifier;
        public final StringBuilder systemIdentifier;

        public Doctype() {
            super();
            this.name = new StringBuilder();
            this.pubSysKey = null;
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
            this.type = TokenType.Doctype;
        }

        public String getName() {
            return this.name.toString();
        }

        public String getPubSysKey() {
            return this.pubSysKey;
        }

        public String getPublicIdentifier() {
            return this.publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return this.systemIdentifier.toString();
        }

        public boolean isForceQuirks() {
            return this.forceQuirks;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.name);
            this.pubSysKey = null;
            Token.reset(this.publicIdentifier);
            Token.reset(this.systemIdentifier);
            this.forceQuirks = false;
            return this;
        }
    }

    public static final class EOF extends Token {
        public EOF() {
            super();
            this.type = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            return this;
        }
    }

    public static final class EndTag extends Tag {
        public EndTag() {
            this.type = TokenType.EndTag;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("</");
            String str = this.tagName;
            if (str == null) {
                str = "(unset)";
            }
            return jo.s(sbZ, str, ">");
        }
    }

    public static final class StartTag extends Tag {
        public StartTag() {
            this.type = TokenType.StartTag;
        }

        public StartTag nameAttr(String str, Attributes attributes) {
            this.tagName = str;
            this.attributes = attributes;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        public String toString() {
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                StringBuilder sbZ = jo.z("<");
                sbZ.append(name());
                sbZ.append(">");
                return sbZ.toString();
            }
            StringBuilder sbZ2 = jo.z("<");
            sbZ2.append(name());
            sbZ2.append(StringUtils.SPACE);
            sbZ2.append(this.attributes.toString());
            sbZ2.append(">");
            return sbZ2.toString();
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        public Tag reset() {
            super.reset();
            this.attributes = null;
            return this;
        }
    }

    public static abstract class Tag extends Token {
        public Attributes attributes;
        private boolean hasEmptyAttributeValue;
        private boolean hasPendingAttributeValue;
        public String normalName;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue;
        private String pendingAttributeValueS;
        public boolean selfClosing;
        public String tagName;

        public Tag() {
            super();
            this.pendingAttributeValue = new StringBuilder();
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
        }

        private void ensureAttributeValue() {
            this.hasPendingAttributeValue = true;
            String str = this.pendingAttributeValueS;
            if (str != null) {
                this.pendingAttributeValue.append(str);
                this.pendingAttributeValueS = null;
            }
        }

        public final void appendAttributeName(String str) {
            String str2 = this.pendingAttributeName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.pendingAttributeName = str;
        }

        public final void appendAttributeValue(String str) {
            ensureAttributeValue();
            if (this.pendingAttributeValue.length() == 0) {
                this.pendingAttributeValueS = str;
            } else {
                this.pendingAttributeValue.append(str);
            }
        }

        public final void appendTagName(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
        }

        public final void finaliseTag() {
            if (this.pendingAttributeName != null) {
                newAttribute();
            }
        }

        public final Attributes getAttributes() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            return this.attributes;
        }

        public final boolean isSelfClosing() {
            return this.selfClosing;
        }

        public final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        public final void newAttribute() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            String str = this.pendingAttributeName;
            if (str != null) {
                String strTrim = str.trim();
                this.pendingAttributeName = strTrim;
                if (strTrim.length() > 0) {
                    this.attributes.add(this.pendingAttributeName, this.hasPendingAttributeValue ? this.pendingAttributeValue.length() > 0 ? this.pendingAttributeValue.toString() : this.pendingAttributeValueS : this.hasEmptyAttributeValue ? "" : null);
                }
            }
            this.pendingAttributeName = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
        }

        public final String normalName() {
            return this.normalName;
        }

        public final void setEmptyAttributeValue() {
            this.hasEmptyAttributeValue = true;
        }

        public final void appendAttributeName(char c) {
            appendAttributeName(String.valueOf(c));
        }

        @Override // org.jsoup.parser.Token
        public Tag reset() {
            this.tagName = null;
            this.normalName = null;
            this.pendingAttributeName = null;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
            this.attributes = null;
            return this;
        }

        public final void appendTagName(char c) {
            appendTagName(String.valueOf(c));
        }

        public final Tag name(String str) {
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        public final void appendAttributeValue(char c) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(c);
        }

        public final void appendAttributeValue(char[] cArr) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(cArr);
        }

        public final void appendAttributeValue(int[] iArr) {
            ensureAttributeValue();
            for (int i : iArr) {
                this.pendingAttributeValue.appendCodePoint(i);
            }
        }
    }

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    public static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public final Character asCharacter() {
        return (Character) this;
    }

    public final Comment asComment() {
        return (Comment) this;
    }

    public final Doctype asDoctype() {
        return (Doctype) this;
    }

    public final EndTag asEndTag() {
        return (EndTag) this;
    }

    public final StartTag asStartTag() {
        return (StartTag) this;
    }

    public final boolean isCData() {
        return this instanceof CData;
    }

    public final boolean isCharacter() {
        return this.type == TokenType.Character;
    }

    public final boolean isComment() {
        return this.type == TokenType.Comment;
    }

    public final boolean isDoctype() {
        return this.type == TokenType.Doctype;
    }

    public final boolean isEOF() {
        return this.type == TokenType.EOF;
    }

    public final boolean isEndTag() {
        return this.type == TokenType.EndTag;
    }

    public final boolean isStartTag() {
        return this.type == TokenType.StartTag;
    }

    public abstract Token reset();

    public String tokenType() {
        return getClass().getSimpleName();
    }

    private Token() {
    }

    public static final class Comment extends Token {
        public boolean bogus;
        private final StringBuilder data;
        private String dataS;

        public Comment() {
            super();
            this.data = new StringBuilder();
            this.bogus = false;
            this.type = TokenType.Comment;
        }

        private void ensureData() {
            String str = this.dataS;
            if (str != null) {
                this.data.append(str);
                this.dataS = null;
            }
        }

        public final Comment append(String str) {
            ensureData();
            if (this.data.length() == 0) {
                this.dataS = str;
            } else {
                this.data.append(str);
            }
            return this;
        }

        public String getData() {
            String str = this.dataS;
            return str != null ? str : this.data.toString();
        }

        @Override // org.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.data);
            this.dataS = null;
            this.bogus = false;
            return this;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("<!--");
            sbZ.append(getData());
            sbZ.append("-->");
            return sbZ.toString();
        }

        public final Comment append(char c) {
            ensureData();
            this.data.append(c);
            return this;
        }
    }
}
