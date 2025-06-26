package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.feed.Feed;
import java.util.Map;

/* loaded from: classes2.dex */
public class FeedHandlerResult {
    public Map<String, String> alternateFeedUrls;
    public Feed feed;
    public boolean hasPodcast;

    public FeedHandlerResult(Feed feed, Map<String, String> map, boolean z) {
        this.feed = feed;
        this.alternateFeedUrls = map;
        this.hasPodcast = z;
    }
}
