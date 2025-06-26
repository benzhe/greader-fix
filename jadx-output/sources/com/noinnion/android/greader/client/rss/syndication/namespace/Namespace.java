package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public abstract class Namespace {
    public static final String NSTAG = null;
    public static final String NSURI = null;

    public abstract void handleElementEnd(String str, HandlerState handlerState);

    public abstract SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes);
}
