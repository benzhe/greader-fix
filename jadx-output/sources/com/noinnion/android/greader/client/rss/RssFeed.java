package com.noinnion.android.greader.client.rss;

import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class RssFeed {
    public String htmlUrl;
    public String title;
    public String uid;
    public boolean hasPodcast = true;
    public Set<String> categories = new HashSet();

    public RssFeed() {
    }

    public RssFeed(String str, String str2) {
        this.uid = str;
        this.title = str2;
    }
}
