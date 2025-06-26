package org.apache.commons.text;

import defpackage.jo;
import java.io.IOException;
import java.io.Writer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.translate.AggregateTranslator;
import org.apache.commons.text.translate.CharSequenceTranslator;
import org.apache.commons.text.translate.CsvTranslators;
import org.apache.commons.text.translate.EntityArrays;
import org.apache.commons.text.translate.JavaUnicodeEscaper;
import org.apache.commons.text.translate.LookupTranslator;
import org.apache.commons.text.translate.NumericEntityEscaper;
import org.apache.commons.text.translate.NumericEntityUnescaper;
import org.apache.commons.text.translate.OctalUnescaper;
import org.apache.commons.text.translate.UnicodeUnescaper;
import org.apache.commons.text.translate.UnicodeUnpairedSurrogateRemover;

/* loaded from: classes2.dex */
public class StringEscapeUtils {
    public static final CharSequenceTranslator ESCAPE_CSV;
    public static final CharSequenceTranslator ESCAPE_ECMASCRIPT;
    public static final CharSequenceTranslator ESCAPE_HTML3;
    public static final CharSequenceTranslator ESCAPE_HTML4;
    public static final CharSequenceTranslator ESCAPE_JAVA;
    public static final CharSequenceTranslator ESCAPE_JSON;
    public static final CharSequenceTranslator ESCAPE_XML10;
    public static final CharSequenceTranslator ESCAPE_XML11;
    public static final CharSequenceTranslator ESCAPE_XSI;
    public static final CharSequenceTranslator UNESCAPE_CSV;
    public static final CharSequenceTranslator UNESCAPE_ECMASCRIPT;
    public static final CharSequenceTranslator UNESCAPE_HTML3;
    public static final CharSequenceTranslator UNESCAPE_HTML4;
    public static final CharSequenceTranslator UNESCAPE_JAVA;
    public static final CharSequenceTranslator UNESCAPE_JSON;
    public static final CharSequenceTranslator UNESCAPE_XML;
    public static final CharSequenceTranslator UNESCAPE_XSI;

    public static final class Builder {
        private final StringBuilder sb;
        private final CharSequenceTranslator translator;

        public Builder append(String str) {
            this.sb.append(str);
            return this;
        }

        public Builder escape(String str) {
            this.sb.append(this.translator.translate(str));
            return this;
        }

        public String toString() {
            return this.sb.toString();
        }

        private Builder(CharSequenceTranslator charSequenceTranslator) {
            this.sb = new StringBuilder();
            this.translator = charSequenceTranslator;
        }
    }

    public static class XsiUnescaper extends CharSequenceTranslator {
        private static final char BACKSLASH = '\\';

        @Override // org.apache.commons.text.translate.CharSequenceTranslator
        public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i != 0) {
                throw new IllegalStateException("XsiUnescaper should never reach the [1] index");
            }
            String string = charSequence.toString();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int iIndexOf = string.indexOf(92, i2);
                if (iIndexOf == -1) {
                    break;
                }
                if (iIndexOf > i3) {
                    writer.write(string.substring(i3, iIndexOf));
                }
                i3 = iIndexOf + 1;
                i2 = iIndexOf + 2;
            }
            if (i3 < string.length()) {
                writer.write(string.substring(i3));
            }
            return Character.codePointCount(charSequence, 0, charSequence.length());
        }
    }

    static {
        Map<CharSequence, CharSequence> map = EntityArrays.JAVA_CTRL_CHARS_ESCAPE;
        ESCAPE_JAVA = new AggregateTranslator(new LookupTranslator(Collections.unmodifiableMap(jo.E("\"", "\\\"", "\\", "\\\\"))), new LookupTranslator(map), JavaUnicodeEscaper.outsideOf(32, 127));
        HashMap mapE = jo.E("'", "\\'", "\"", "\\\"");
        mapE.put("\\", "\\\\");
        mapE.put("/", "\\/");
        ESCAPE_ECMASCRIPT = new AggregateTranslator(new LookupTranslator(Collections.unmodifiableMap(mapE)), new LookupTranslator(map), JavaUnicodeEscaper.outsideOf(32, 127));
        HashMap mapE2 = jo.E("\"", "\\\"", "\\", "\\\\");
        mapE2.put("/", "\\/");
        ESCAPE_JSON = new AggregateTranslator(new LookupTranslator(Collections.unmodifiableMap(mapE2)), new LookupTranslator(map), JavaUnicodeEscaper.outsideOf(32, WebSocketProtocol.PAYLOAD_SHORT));
        HashMap mapE3 = jo.E("\u0000", "", "\u0001", "");
        mapE3.put("\u0002", "");
        mapE3.put("\u0003", "");
        mapE3.put("\u0004", "");
        mapE3.put("\u0005", "");
        mapE3.put("\u0006", "");
        mapE3.put("\u0007", "");
        mapE3.put("\b", "");
        mapE3.put("\u000b", "");
        mapE3.put("\f", "");
        mapE3.put("\u000e", "");
        mapE3.put("\u000f", "");
        mapE3.put("\u0010", "");
        mapE3.put("\u0011", "");
        mapE3.put("\u0012", "");
        mapE3.put("\u0013", "");
        mapE3.put("\u0014", "");
        mapE3.put("\u0015", "");
        mapE3.put("\u0016", "");
        mapE3.put("\u0017", "");
        mapE3.put("\u0018", "");
        mapE3.put("\u0019", "");
        mapE3.put("\u001a", "");
        mapE3.put("\u001b", "");
        mapE3.put("\u001c", "");
        mapE3.put("\u001d", "");
        mapE3.put("\u001e", "");
        mapE3.put("\u001f", "");
        mapE3.put("\ufffe", "");
        mapE3.put("\uffff", "");
        Map<CharSequence, CharSequence> map2 = EntityArrays.BASIC_ESCAPE;
        Map<CharSequence, CharSequence> map3 = EntityArrays.APOS_ESCAPE;
        ESCAPE_XML10 = new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map3), new LookupTranslator(Collections.unmodifiableMap(mapE3)), NumericEntityEscaper.between(127, 132), NumericEntityEscaper.between(134, 159), new UnicodeUnpairedSurrogateRemover());
        HashMap mapE4 = jo.E("\u0000", "", "\u000b", "&#11;");
        mapE4.put("\f", "&#12;");
        mapE4.put("\ufffe", "");
        mapE4.put("\uffff", "");
        ESCAPE_XML11 = new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map3), new LookupTranslator(Collections.unmodifiableMap(mapE4)), NumericEntityEscaper.between(1, 8), NumericEntityEscaper.between(14, 31), NumericEntityEscaper.between(127, 132), NumericEntityEscaper.between(134, 159), new UnicodeUnpairedSurrogateRemover());
        Map<CharSequence, CharSequence> map4 = EntityArrays.ISO8859_1_ESCAPE;
        ESCAPE_HTML3 = new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map4));
        ESCAPE_HTML4 = new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map4), new LookupTranslator(EntityArrays.HTML40_EXTENDED_ESCAPE));
        ESCAPE_CSV = new CsvTranslators.CsvEscaper();
        HashMap mapE5 = jo.E("|", "\\|", "&", "\\&");
        mapE5.put(";", "\\;");
        mapE5.put("<", "\\<");
        mapE5.put(">", "\\>");
        mapE5.put("(", "\\(");
        mapE5.put(")", "\\)");
        mapE5.put("$", "\\$");
        mapE5.put("`", "\\`");
        mapE5.put("\\", "\\\\");
        mapE5.put("\"", "\\\"");
        mapE5.put("'", "\\'");
        mapE5.put(StringUtils.SPACE, "\\ ");
        mapE5.put("\t", "\\\t");
        mapE5.put(IOUtils.LINE_SEPARATOR_WINDOWS, "");
        mapE5.put("\n", "");
        mapE5.put("*", "\\*");
        mapE5.put("?", "\\?");
        mapE5.put("[", "\\[");
        mapE5.put("#", "\\#");
        mapE5.put("~", "\\~");
        mapE5.put("=", "\\=");
        mapE5.put("%", "\\%");
        ESCAPE_XSI = new LookupTranslator(Collections.unmodifiableMap(mapE5));
        HashMap mapE6 = jo.E("\\\\", "\\", "\\\"", "\"");
        mapE6.put("\\'", "'");
        mapE6.put("\\", "");
        AggregateTranslator aggregateTranslator = new AggregateTranslator(new OctalUnescaper(), new UnicodeUnescaper(), new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_UNESCAPE), new LookupTranslator(Collections.unmodifiableMap(mapE6)));
        UNESCAPE_JAVA = aggregateTranslator;
        UNESCAPE_ECMASCRIPT = aggregateTranslator;
        UNESCAPE_JSON = aggregateTranslator;
        Map<CharSequence, CharSequence> map5 = EntityArrays.BASIC_UNESCAPE;
        Map<CharSequence, CharSequence> map6 = EntityArrays.ISO8859_1_UNESCAPE;
        UNESCAPE_HTML3 = new AggregateTranslator(new LookupTranslator(map5), new LookupTranslator(map6), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        UNESCAPE_HTML4 = new AggregateTranslator(new LookupTranslator(map5), new LookupTranslator(map6), new LookupTranslator(EntityArrays.HTML40_EXTENDED_UNESCAPE), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        UNESCAPE_XML = new AggregateTranslator(new LookupTranslator(map5), new LookupTranslator(EntityArrays.APOS_UNESCAPE), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        UNESCAPE_CSV = new CsvTranslators.CsvUnescaper();
        UNESCAPE_XSI = new XsiUnescaper();
    }

    public static Builder builder(CharSequenceTranslator charSequenceTranslator) {
        return new Builder(charSequenceTranslator);
    }

    public static final String escapeCsv(String str) {
        return ESCAPE_CSV.translate(str);
    }

    public static final String escapeEcmaScript(String str) {
        return ESCAPE_ECMASCRIPT.translate(str);
    }

    public static final String escapeHtml3(String str) {
        return ESCAPE_HTML3.translate(str);
    }

    public static final String escapeHtml4(String str) {
        return ESCAPE_HTML4.translate(str);
    }

    public static final String escapeJava(String str) {
        return ESCAPE_JAVA.translate(str);
    }

    public static final String escapeJson(String str) {
        return ESCAPE_JSON.translate(str);
    }

    public static final String escapeXSI(String str) {
        return ESCAPE_XSI.translate(str);
    }

    public static String escapeXml10(String str) {
        return ESCAPE_XML10.translate(str);
    }

    public static String escapeXml11(String str) {
        return ESCAPE_XML11.translate(str);
    }

    public static final String unescapeCsv(String str) {
        return UNESCAPE_CSV.translate(str);
    }

    public static final String unescapeEcmaScript(String str) {
        return UNESCAPE_ECMASCRIPT.translate(str);
    }

    public static final String unescapeHtml3(String str) {
        return UNESCAPE_HTML3.translate(str);
    }

    public static final String unescapeHtml4(String str) {
        return UNESCAPE_HTML4.translate(str);
    }

    public static final String unescapeJava(String str) {
        return UNESCAPE_JAVA.translate(str);
    }

    public static final String unescapeJson(String str) {
        return UNESCAPE_JSON.translate(str);
    }

    public static final String unescapeXSI(String str) {
        return UNESCAPE_XSI.translate(str);
    }

    public static final String unescapeXml(String str) {
        return UNESCAPE_XML.translate(str);
    }
}
