package com.noinnion.android.greader.client.rss.syndication.feed;

/* loaded from: classes2.dex */
public abstract class FeedComponent {
    public long id;

    public boolean compareWithOther(FeedComponent feedComponent) {
        return false;
    }

    public abstract String getHumanReadableIdentifier();

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void updateFromOther(FeedComponent feedComponent) {
    }
}
