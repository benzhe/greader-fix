package com.noinnion.android.greader.client.rss.syndication.feed;

import defpackage.jo;

/* loaded from: classes2.dex */
public class ID3Chapter extends Chapter {
    public static final int CHAPTERTYPE_ID3CHAPTER = 2;
    private String id3ID;

    public ID3Chapter(String str, long j) {
        super(j);
        this.id3ID = str;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public int getChapterType() {
        return 2;
    }

    public String getId3ID() {
        return this.id3ID;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ID3Chapter [id3ID=");
        sbZ.append(this.id3ID);
        sbZ.append(", title=");
        sbZ.append(this.title);
        sbZ.append(", start=");
        sbZ.append(this.start);
        sbZ.append(", url=");
        return jo.s(sbZ, this.link, "]");
    }

    public ID3Chapter(long j, String str, FeedItem feedItem, String str2) {
        super(j, str, feedItem, str2);
    }
}
