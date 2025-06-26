package com.noinnion.android.greader.client.rss.syndication.namespace.atom;

import com.noinnion.android.greader.client.rss.syndication.feed.FeedImage;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedItem;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedMedia;
import com.noinnion.android.greader.client.rss.syndication.handler.HandlerState;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.Namespace;
import com.noinnion.android.greader.client.rss.syndication.namespace.SyndElement;
import com.noinnion.android.greader.client.rss.syndication.util.SyndDateUtils;
import com.noinnion.android.greader.client.rss.syndication.util.SyndTypeUtils;
import org.xml.sax.Attributes;

/* loaded from: classes2.dex */
public class NSAtom extends Namespace {
    private static final String AUTHOR = "author";
    private static final String CONTENT = "content";
    private static final String ENTRY = "entry";
    private static final String FEED = "feed";
    private static final String ID = "id";
    private static final String IMAGE = "logo";
    private static final String LINK = "link";
    private static final String LINK_HREF = "href";
    private static final String LINK_LENGTH = "length";
    private static final String LINK_REL = "rel";
    private static final String LINK_REL_ALTERNATE = "alternate";
    private static final String LINK_REL_ENCLOSURE = "enclosure";
    private static final String LINK_REL_PAYMENT = "payment";
    private static final String LINK_REL_RELATED = "related";
    private static final String LINK_REL_SELF = "self";
    private static final String LINK_TITLE = "title";
    private static final String LINK_TYPE = "type";
    private static final String LINK_TYPE_ATOM = "application/atom+xml";
    private static final String LINK_TYPE_HTML = "text/html";
    private static final String LINK_TYPE_RSS = "application/rss+xml";
    private static final String LINK_TYPE_XHTML = "application/xml+xhtml";
    public static final String NSTAG = "atom";
    public static final String NSURI = "http://www.w3.org/2005/Atom";
    private static final String PUBLISHED = "published";
    private static final String SUBTITLE = "subtitle";
    private static final String TAG = "NSAtom";
    private static final String TEXT_TYPE = "type";
    private static final String TITLE = "title";
    private static final String UPDATED = "updated";
    public static final String isFeed = "feed|channel";
    public static final String isFeedItem = "entry|item";
    private static final String isText = "title|content||subtitle";

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public void handleElementEnd(String str, HandlerState handlerState) {
        AtomText atomText;
        if (str.equals(ENTRY)) {
            handlerState.setCurrentItem(null);
        }
        if (handlerState.getTagstack().size() >= 2) {
            String string = handlerState.getContentBuf() != null ? handlerState.getContentBuf().toString() : "";
            SyndElement syndElementPeek = handlerState.getTagstack().peek();
            String name = syndElementPeek.getName();
            String name2 = handlerState.getSecondTag().getName();
            if (name.matches(isText)) {
                atomText = (AtomText) syndElementPeek;
                atomText.setContent(string);
            } else {
                atomText = null;
            }
            if (name.equals(ID)) {
                if (name2.equals(FEED)) {
                    handlerState.getFeed().setFeedIdentifier(string);
                    return;
                } else {
                    if (name2.equals(ENTRY)) {
                        handlerState.getCurrentItem().setItemIdentifier(string);
                        return;
                    }
                    return;
                }
            }
            if (name.equals("title")) {
                if (name2.equals(FEED)) {
                    handlerState.getFeed().setTitle(atomText.getProcessedContent());
                    return;
                } else {
                    if (name2.equals(ENTRY)) {
                        handlerState.getCurrentItem().setTitle(atomText.getProcessedContent());
                        return;
                    }
                    return;
                }
            }
            if (name.equals(SUBTITLE)) {
                if (name2.equals(FEED)) {
                    handlerState.getFeed().setDescription(atomText.getProcessedContent());
                    return;
                }
                return;
            }
            if (name.equals("content")) {
                if (name2.equals(ENTRY)) {
                    handlerState.getCurrentItem().setDescription(atomText.getProcessedContent());
                }
            } else {
                if (name.equals(UPDATED)) {
                    if (name2.equals(ENTRY) && handlerState.getCurrentItem().getPubDate() == null) {
                        handlerState.getCurrentItem().setPubDate(SyndDateUtils.parseRFC3339Date(string));
                        return;
                    }
                    return;
                }
                if (name.equals(PUBLISHED)) {
                    if (name2.equals(ENTRY)) {
                        handlerState.getCurrentItem().setPubDate(SyndDateUtils.parseRFC3339Date(string));
                    }
                } else if (name.equals(IMAGE)) {
                    handlerState.getFeed().setImage(new FeedImage(string, null));
                }
            }
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.namespace.Namespace
    public SyndElement handleElementStart(String str, HandlerState handlerState, Attributes attributes) throws NumberFormatException {
        if (str.equals(ENTRY)) {
            handlerState.setCurrentItem(new FeedItem());
            handlerState.getItems().add(handlerState.getCurrentItem());
            handlerState.getCurrentItem().setFeed(handlerState.getFeed());
        } else {
            if (str.matches(isText)) {
                return new AtomText(str, this, attributes.getValue(NSRSS20.ENC_TYPE));
            }
            if (str.equals("link")) {
                String value = attributes.getValue("href");
                String value2 = attributes.getValue(LINK_REL);
                SyndElement syndElementPeek = handlerState.getTagstack().peek();
                if (syndElementPeek.getName().matches(isFeedItem)) {
                    if (value2 == null || value2.equals(LINK_REL_ALTERNATE)) {
                        handlerState.getCurrentItem().setLink(value);
                    } else if (value2.equals("enclosure")) {
                        String value3 = attributes.getValue("length");
                        long j = 0;
                        if (value3 != null) {
                            try {
                                j = Long.parseLong(value3);
                            } catch (NumberFormatException unused) {
                            }
                        }
                        long j2 = j;
                        String value4 = attributes.getValue(NSRSS20.ENC_TYPE);
                        if (SyndTypeUtils.enclosureTypeValid(value4) || (value4 = SyndTypeUtils.getValidMimeTypeFromUrl(value)) != null) {
                            handlerState.getCurrentItem().setMedia(new FeedMedia(handlerState.getCurrentItem(), value, j2, value4));
                        }
                    } else if (value2.equals(LINK_REL_PAYMENT)) {
                        handlerState.getCurrentItem().setPaymentLink(value);
                    }
                } else if (syndElementPeek.getName().matches(isFeed)) {
                    if (value2 == null || value2.equals(LINK_REL_ALTERNATE)) {
                        String value5 = attributes.getValue(NSRSS20.ENC_TYPE);
                        if ((value5 == null && handlerState.getFeed().getLink() == null) || (value5 != null && (value5.equals(LINK_TYPE_HTML) || value5.equals(LINK_TYPE_XHTML)))) {
                            handlerState.getFeed().setLink(value);
                        } else if (value5 != null && (value5.equals(LINK_TYPE_ATOM) || value5.equals(LINK_TYPE_RSS))) {
                            String value6 = attributes.getValue("title");
                            if (value6 == null) {
                                value6 = value;
                            }
                            handlerState.addAlternateFeedUrl(value6, value);
                        }
                    } else if (value2.equals(LINK_REL_PAYMENT)) {
                        handlerState.getFeed().setPaymentLink(value);
                    }
                }
            }
        }
        return new SyndElement(str, this);
    }
}
