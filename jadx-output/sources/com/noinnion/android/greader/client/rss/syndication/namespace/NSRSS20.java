package com.noinnion.android.greader.client.rss.syndication.namespace;

import com.noinnion.android.greader.client.rss.syndication.feed.FeedImage;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedItem;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedMedia;
import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import com.noinnion.android.greader.client.rss.syndication.util.SyndDateUtils;
import com.noinnion.android.greader.client.rss.syndication.util.SyndTypeUtils;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSRSS20 extends Namespace {
    public static final String CHANNEL = "channel";
    public static final String DESCR = "description";
    public static final String ENCLOSURE = "enclosure";
    public static final String ENC_LEN = "length";
    public static final String ENC_TYPE = "type";
    public static final String ENC_URL = "url";
    public static final String GUID = "guid";
    public static final String IMAGE = "image";
    public static final String ITEM = "item";
    public static final String LANGUAGE = "language";
    public static final String LINK = "link";
    public static final String NSTAG = "rss";
    public static final String NSURI = "";
    public static final String PUBDATE = "pubDate";
    private static final String TAG = "NSRSS20";
    public static final String TITLE = "title";
    public static final String URL = "url";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
        if (str.equals(ITEM)) {
            if (handlerState.getCurrentItem() != null && handlerState.getCurrentItem().getTitle() == null) {
                handlerState.getCurrentItem().setTitle(handlerState.getCurrentItem().getDescription());
            }
            handlerState.setCurrentItem(null);
            return;
        }
        if (handlerState.getTagstack().size() < 2 || handlerState.getContentBuf() == null) {
            return;
        }
        String string = handlerState.getContentBuf().toString();
        String name = handlerState.getTagstack().peek().getName();
        String name2 = handlerState.getSecondTag().getName();
        String name3 = handlerState.getTagstack().size() >= 3 ? handlerState.getThirdTag().getName() : null;
        if (name.equals(GUID) && name2.equals(ITEM)) {
            if (string.isEmpty()) {
                return;
            }
            handlerState.getCurrentItem().setItemIdentifier(string);
            return;
        }
        if (name.equals("title")) {
            if (name2.equals(ITEM)) {
                handlerState.getCurrentItem().setTitle(string);
                return;
            }
            if (name2.equals(CHANNEL)) {
                handlerState.getFeed().setTitle(string);
                return;
            } else {
                if (name2.equals(IMAGE) && name3 != null && name3.equals(CHANNEL)) {
                    handlerState.getFeed().getImage().setTitle(string);
                    return;
                }
                return;
            }
        }
        if (name.equals(LINK)) {
            if (name2.equals(CHANNEL)) {
                handlerState.getFeed().setLink(string);
                return;
            } else {
                if (name2.equals(ITEM)) {
                    handlerState.getCurrentItem().setLink(string);
                    return;
                }
                return;
            }
        }
        if (name.equals(PUBDATE) && name2.equals(ITEM)) {
            handlerState.getCurrentItem().setPubDate(SyndDateUtils.parseRFC822Date(string));
            return;
        }
        if (name.equals("url") && name2.equals(IMAGE) && name3 != null && name3.equals(CHANNEL)) {
            handlerState.getFeed().getImage().setDownloadUrl(string);
            return;
        }
        if (!str.equals(DESCR)) {
            if (str.equals(LANGUAGE)) {
                handlerState.getFeed().setLanguage(string.toLowerCase());
            }
        } else if (name2.equals(CHANNEL)) {
            handlerState.getFeed().setDescription(string);
        } else if (name2.equals(ITEM)) {
            handlerState.getCurrentItem().setDescription(string);
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) throws NumberFormatException {
        if (str.equals(ITEM)) {
            handlerState.setCurrentItem(new FeedItem());
            handlerState.getItems().add(handlerState.getCurrentItem());
            handlerState.getCurrentItem().setFeed(handlerState.getFeed());
        } else if (str.equals(ENCLOSURE)) {
            String value = attributes.getValue(ENC_TYPE);
            String value2 = attributes.getValue("url");
            if (handlerState.getCurrentItem().getMedia() == null && (SyndTypeUtils.enclosureTypeValid(value) || (value = SyndTypeUtils.getValidMimeTypeFromUrl(value2)) != null)) {
                String str2 = value;
                long j = 0;
                try {
                    j = Long.parseLong(attributes.getValue(ENC_LEN));
                } catch (NumberFormatException unused) {
                }
                handlerState.getCurrentItem().setMedia(new FeedMedia(handlerState.getCurrentItem(), value2, j, str2));
            }
        } else if (str.equals(IMAGE) && handlerState.getTagstack().size() >= 1 && handlerState.getTagstack().peek().getName().equals(CHANNEL)) {
            handlerState.getFeed().setImage(new FeedImage());
        }
        return new SyndElement(str, this);
    }
}
