package com.noinnion.android.greader.client.rss.syndication.feed;

/* loaded from: classes2.dex */
public class SearchResult {
    private FeedComponent component;
    private String subtitle;
    private int value;

    public SearchResult(FeedComponent feedComponent, int i, String str) {
        this.component = feedComponent;
        this.value = i;
        this.subtitle = str;
    }

    public FeedComponent getComponent() {
        return this.component;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public int getValue() {
        return this.value;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }
}
