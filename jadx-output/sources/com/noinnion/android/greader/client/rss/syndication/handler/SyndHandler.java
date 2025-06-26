package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.feed.Feed;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSITunes;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSMedia;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import com.noinnion.android.greader.client.rss.syndication.namespace.Namespace;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.NSAtom;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes2.dex */
public class SyndHandler extends DefaultHandler {
    private static final String ATOM_ROOT = "feed";
    private static final String DEFAULT_PREFIX = "";
    private static final String RSS_ROOT = "rss";
    private static final String TAG = "SyndHandler";
    public HandlerState state;

    public SyndHandler(Feed feed) {
        this.state = new HandlerState(feed);
    }

    private Namespace getHandlingNamespace(String str, String str2) {
        Namespace namespace = this.state.namespaces.get(str);
        return (namespace != null || this.state.defaultNamespaces.empty() || str2.contains(":")) ? namespace : this.state.defaultNamespaces.peek();
    }

    private void handleFeedType(String str, Attributes attributes) {
        String value;
        Feed feed = this.state.getFeed();
        if (feed.getType() != null) {
            return;
        }
        if (str.equals(ATOM_ROOT)) {
            feed.setType("atom");
            return;
        }
        if (!str.equals("rss") || (value = attributes.getValue("version")) == null) {
            return;
        }
        if (value.equals("2.0") || value.equals("0.91") || value.equals("0.92")) {
            feed.setType("rss");
        }
        this.state.defaultNamespaces.push(new NSRSS20());
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        StringBuffer stringBuffer;
        if (this.state.tagstack.empty() || this.state.getTagstack().size() < 2 || (stringBuffer = this.state.contentBuf) == null) {
            return;
        }
        stringBuffer.append(cArr, i, i2);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        super.endDocument();
        this.state.getFeed().setItems(this.state.getItems());
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        Namespace handlingNamespace = getHandlingNamespace(str, str3);
        if (handlingNamespace != null) {
            handlingNamespace.handleElementEnd(str2, this.state);
            this.state.tagstack.pop();
        }
        this.state.contentBuf = null;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        if (this.state.defaultNamespaces.size() <= 1 || !str.equals("")) {
            return;
        }
        this.state.defaultNamespaces.pop();
    }

    public HandlerState getState() {
        return this.state;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        handleFeedType(str2, attributes);
        this.state.contentBuf = new StringBuffer();
        Namespace handlingNamespace = getHandlingNamespace(str, str3);
        if (handlingNamespace != null) {
            this.state.tagstack.push(handlingNamespace.handleElementStart(str2, this.state, attributes));
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        if (this.state.namespaces.containsKey(str2)) {
            return;
        }
        if (str2.equals(NSAtom.NSURI)) {
            if (str.equals("")) {
                this.state.defaultNamespaces.push(new NSAtom());
                return;
            } else {
                if (str.equals("atom")) {
                    this.state.namespaces.put(str2, new NSAtom());
                    return;
                }
                return;
            }
        }
        if (str2.equals(NSContent.NSURI) && str.equals(NSContent.NSTAG)) {
            this.state.namespaces.put(str2, new NSContent());
            return;
        }
        if (str2.equals(NSITunes.NSURI) && str.equals(NSITunes.NSTAG)) {
            this.state.namespaces.put(str2, new NSITunes());
            return;
        }
        if (str2.equals(NSSimpleChapters.NSURI) && str.matches(NSSimpleChapters.NSTAG)) {
            this.state.namespaces.put(str2, new NSSimpleChapters());
        } else if (str2.equals(NSMedia.NSURI) && str.equals(NSMedia.NSTAG)) {
            this.state.namespaces.put(str2, new NSMedia());
        }
    }
}
