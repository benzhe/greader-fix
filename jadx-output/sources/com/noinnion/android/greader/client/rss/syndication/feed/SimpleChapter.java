package com.noinnion.android.greader.client.rss.syndication.feed;

/* loaded from: classes2.dex */
public class SimpleChapter extends Chapter {
    public static final int CHAPTERTYPE_SIMPLECHAPTER = 0;

    public SimpleChapter(long j, String str, FeedItem feedItem, String str2) {
        super(j, str, feedItem, str2);
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public int getChapterType() {
        return 0;
    }

    public void updateFromOther(SimpleChapter simpleChapter) {
        super.updateFromOther((FeedComponent) simpleChapter);
        this.start = simpleChapter.start;
        String str = simpleChapter.title;
        if (str != null) {
            this.title = str;
        }
        String str2 = simpleChapter.link;
        if (str2 != null) {
            this.link = str2;
        }
    }
}
