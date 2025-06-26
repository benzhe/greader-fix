package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSContent extends Namespace {
    private static final String ENCODED = "encoded";
    public static final String NSTAG = "content";
    public static final String NSURI = "http://purl.org/rss/1.0/modules/content/";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
        if (str.equals(ENCODED)) {
            handlerState.getCurrentItem().setContentEncoded(handlerState.getContentBuf().toString());
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) {
        return new SyndElement(str, this);
    }
}
