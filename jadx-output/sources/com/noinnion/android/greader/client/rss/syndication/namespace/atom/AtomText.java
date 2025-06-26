package com.noinnion.android.greader.client.rss.syndication.namespace.atom;

import com.noinnion.android.greader.client.rss.syndication.namespace.Namespace;
import com.noinnion.android.greader.client.rss.syndication.namespace.SyndElement;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public class AtomText extends SyndElement {
    public static final String TYPE_HTML = "html";
    public static final String TYPE_TEXT = "text";
    public static final String TYPE_XHTML = "xhtml";
    private String content;
    private String type;

    public AtomText(String str, Namespace namespace, String str2) {
        super(str, namespace);
        this.type = str2;
    }

    public String getContent() {
        return this.content;
    }

    public String getProcessedContent() {
        String str = this.type;
        return str == null ? this.content : str.equals(TYPE_HTML) ? StringEscapeUtils.unescapeHtml4(this.content) : this.type.equals(TYPE_XHTML) ? this.content : this.content;
    }

    public String getType() {
        return this.type;
    }

    public void setContent(String str) {
        this.content = str;
    }
}
