package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.feed.FeedImage;
import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSITunes extends Namespace {
    private static final String AUTHOR = "author";
    private static final String IMAGE = "image";
    private static final String IMAGE_HREF = "href";
    private static final String IMAGE_TITLE = "image";
    public static final String NSTAG = "itunes";
    public static final String NSURI = "http://www.itunes.com/dtds/podcast-1.0.dtd";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
        if (str.equals(AUTHOR)) {
            handlerState.getFeed().setAuthor(handlerState.getContentBuf().toString());
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) {
        if (str.equals(NSRSS20.IMAGE)) {
            FeedImage feedImage = new FeedImage();
            feedImage.setTitle(NSRSS20.IMAGE);
            feedImage.setDownloadUrl(attributes.getValue("href"));
            if (handlerState.getCurrentItem() != null) {
                feedImage.setTitle(handlerState.getCurrentItem().getTitle() + NSRSS20.IMAGE);
                handlerState.getCurrentItem().setImage(feedImage);
            } else if (handlerState.getFeed().getImage() == null) {
                handlerState.getFeed().setImage(feedImage);
            }
        }
        return new SyndElement(str, this);
    }
}
