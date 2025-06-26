package com.noinnion.android.greader.client.rss;

import java.util.Map;

/* loaded from: classes2.dex */
public class DataSet {
    public static final String FILENAME = "data.json";
    public static final String FILENAME_BACKUP = "data.old.json";
    public Map<String, RssFeed> feeds;
    public Map<String, RssTag> tags;

    public boolean isEmpty() {
        Map<String, RssTag> map;
        Map<String, RssFeed> map2 = this.feeds;
        return (map2 == null || map2.size() == 0) && ((map = this.tags) == null || map.size() == 0);
    }
}
