package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.feed.FeedMedia;
import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import com.noinnion.android.greader.client.rss.syndication.util.SyndTypeUtils;
import java.util.concurrent.TimeUnit;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSMedia extends Namespace {
    private static final String CONTENT = "content";
    private static final String DOWNLOAD_URL = "url";
    private static final String DURATION = "duration";
    private static final String MIME_TYPE = "type";
    public static final String NSTAG = "media";
    public static final String NSURI = "http://search.yahoo.com/mrss/";
    private static final String SIZE = "fileSize";
    private static final String TAG = "NSMedia";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) throws NumberFormatException {
        if (str.equals("content")) {
            String value = attributes.getValue("url");
            String value2 = attributes.getValue("type");
            if (handlerState.getCurrentItem().getMedia() == null && value != null && (SyndTypeUtils.enclosureTypeValid(value2) || (value2 = SyndTypeUtils.getValidMimeTypeFromUrl(value)) != null)) {
                String str2 = value2;
                long j = 0;
                try {
                    j = Long.parseLong(attributes.getValue(SIZE));
                } catch (NumberFormatException unused) {
                }
                long j2 = j;
                try {
                    String value3 = attributes.getValue(DURATION);
                    if (value3 != null) {
                        TimeUnit.MILLISECONDS.convert(Long.parseLong(value3), TimeUnit.SECONDS);
                    }
                } catch (NumberFormatException unused2) {
                }
                handlerState.getCurrentItem().setMedia(new FeedMedia(handlerState.getCurrentItem(), value, j2, str2));
            }
        }
        return new SyndElement(str, this);
    }
}
