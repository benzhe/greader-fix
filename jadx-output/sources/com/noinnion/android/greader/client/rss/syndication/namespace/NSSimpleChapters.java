package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.feed.SimpleChapter;
import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import com.noinnion.android.greader.client.rss.syndication.util.SyndDateUtils;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSSimpleChapters extends Namespace {
    public static final String CHAPTER = "chapter";
    public static final String CHAPTERS = "chapters";
    public static final String HREF = "href";
    public static final String NSTAG = "psc|sc";
    public static final String NSURI = "http://podlove.org/simple-chapters";
    public static final String START = "start";
    public static final String TITLE = "title";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) {
        if (str.equals(CHAPTERS)) {
            handlerState.getCurrentItem().setChapters(new ArrayList());
        } else if (str.equals(CHAPTER)) {
            handlerState.getCurrentItem().getChapters().add(new SimpleChapter(SyndDateUtils.parseTimeString(attributes.getValue(START)), attributes.getValue("title"), handlerState.getCurrentItem(), attributes.getValue(HREF)));
        }
        return new SyndElement(str, this);
    }
}
