package com.noinnion.android.greader.client.rss.syndication.feed;

/* loaded from: classes2.dex */
public abstract class Chapter extends FeedComponent {
    public String link;
    public long start;
    public String title;

    public Chapter() {
    }

    public abstract int getChapterType();

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public String getHumanReadableIdentifier() {
        return this.title;
    }

    public String getLink() {
        return this.link;
    }

    public long getStart() {
        return this.start;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setStart(long j) {
        this.start = j;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public Chapter(long j) {
        this.start = j;
    }

    public Chapter(long j, String str, FeedItem feedItem, String str2) {
        this.start = j;
        this.title = str;
        this.link = str2;
    }
}
