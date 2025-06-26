package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.feed.Feed;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedItem;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSITunes;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSMedia;
import com.noinnion.android.greader.client.rss.syndication.namespace.Namespace;
import com.noinnion.android.greader.client.rss.syndication.namespace.SyndElement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Stack;

/* loaded from: classes2.dex */
public class HandlerState {
    public StringBuffer contentBuf;
    public FeedItem currentItem;
    public Feed feed;
    public Map<String, String> alternateUrls = new LinkedHashMap();
    public ArrayList<FeedItem> items = new ArrayList<>();
    public Stack<SyndElement> tagstack = new Stack<>();
    public HashMap<String, Namespace> namespaces = new HashMap<>();
    public Stack<Namespace> defaultNamespaces = new Stack<>();

    public HandlerState(Feed feed) {
        this.feed = feed;
    }

    public void addAlternateFeedUrl(String str, String str2) {
        this.alternateUrls.put(str2, str);
    }

    public StringBuffer getContentBuf() {
        return this.contentBuf;
    }

    public FeedItem getCurrentItem() {
        return this.currentItem;
    }

    public Feed getFeed() {
        return this.feed;
    }

    public ArrayList<FeedItem> getItems() {
        return this.items;
    }

    public SyndElement getSecondTag() {
        SyndElement syndElementPop = this.tagstack.pop();
        SyndElement syndElementPeek = this.tagstack.peek();
        this.tagstack.push(syndElementPop);
        return syndElementPeek;
    }

    public Stack<SyndElement> getTagstack() {
        return this.tagstack;
    }

    public SyndElement getThirdTag() {
        SyndElement syndElementPop = this.tagstack.pop();
        SyndElement syndElementPop2 = this.tagstack.pop();
        SyndElement syndElementPeek = this.tagstack.peek();
        this.tagstack.push(syndElementPop2);
        this.tagstack.push(syndElementPop);
        return syndElementPeek;
    }

    public boolean hasPodcast() {
        for (String str : this.namespaces.keySet()) {
            if (str.equals(NSITunes.NSURI) || str.equals(NSMedia.NSURI)) {
                return true;
            }
        }
        return false;
    }

    public void setCurrentItem(FeedItem feedItem) {
        this.currentItem = feedItem;
    }

    public void setFeed(Feed feed) {
        this.feed = feed;
    }
}
