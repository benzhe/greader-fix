package com.noinnion.android.greader.client.rss.syndication.feed;

import java.util.Date;

/* loaded from: classes2.dex */
public class FeedMedia extends FeedFile {
    public static final int FEEDFILETYPE_FEEDMEDIA = 2;
    public static final int PLAYABLE_TYPE_FEEDMEDIA = 1;
    public static final String PREF_FEED_ID = "FeedMedia.PrefFeedId";
    public static final String PREF_MEDIA_ID = "FeedMedia.PrefMediaId";
    private static final String TAG = "FeedMedia";
    private int duration;
    private volatile FeedItem item;
    private long itemID;
    private String mime_type;
    private Date playbackCompletionDate;
    private int played_duration;
    private int position;
    private long size;

    public FeedMedia(FeedItem feedItem, String str, long j, String str2) {
        super(null, str, false);
        this.item = feedItem;
        this.size = j;
        this.mime_type = str2;
    }

    public boolean compareWithOther(FeedMedia feedMedia) {
        String str;
        if (super.compareWithOther((FeedFile) feedMedia)) {
            return true;
        }
        String str2 = feedMedia.mime_type;
        if (str2 != null && ((str = this.mime_type) == null || !str.equals(str2))) {
            return true;
        }
        long j = feedMedia.size;
        return j > 0 && j != this.size;
    }

    public int getDuration() {
        return this.duration;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public String getHumanReadableIdentifier() {
        return (this.item == null || this.item.getTitle() == null) ? this.download_url : this.item.getTitle();
    }

    public FeedImage getImage() {
        if (this.item != null) {
            return this.item.hasItemImageDownloaded() ? this.item.getImage() : this.item.getFeed().getImage();
        }
        return null;
    }

    public FeedItem getItem() {
        return this.item;
    }

    public MediaType getMediaType() {
        String str = this.mime_type;
        return (str == null || str.isEmpty()) ? MediaType.UNKNOWN : this.mime_type.startsWith("audio") ? MediaType.AUDIO : this.mime_type.startsWith("video") ? MediaType.VIDEO : this.mime_type.equals("application/ogg") ? MediaType.AUDIO : MediaType.UNKNOWN;
    }

    public String getMime_type() {
        return this.mime_type;
    }

    public Date getPlaybackCompletionDate() {
        Date date = this.playbackCompletionDate;
        if (date == null) {
            return null;
        }
        return (Date) date.clone();
    }

    public int getPlayedDuration() {
        return this.played_duration;
    }

    public int getPosition() {
        return this.position;
    }

    public long getSize() {
        return this.size;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedFile
    public int getTypeAsInt() {
        return 2;
    }

    public boolean isInProgress() {
        return this.position > 0;
    }

    public boolean isPlaying() {
        return true;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setItem(FeedItem feedItem) {
        this.item = feedItem;
        if (feedItem == null || feedItem.getMedia() == this) {
            return;
        }
        feedItem.setMedia(this);
    }

    public void setMime_type(String str) {
        this.mime_type = str;
    }

    public void setPlaybackCompletionDate(Date date) {
        this.playbackCompletionDate = date == null ? null : (Date) date.clone();
    }

    public void setPlayedDuration(int i) {
        this.played_duration = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void updateFromOther(FeedMedia feedMedia) {
        super.updateFromOther((FeedFile) feedMedia);
        long j = feedMedia.size;
        if (j > 0) {
            this.size = j;
        }
        String str = feedMedia.mime_type;
        if (str != null) {
            this.mime_type = str;
        }
    }

    public FeedMedia(long j, FeedItem feedItem, int i, int i2, long j2, String str, String str2, String str3, boolean z, Date date, int i3) {
        super(str2, str3, z);
        this.id = j;
        this.item = feedItem;
        this.duration = i;
        this.position = i2;
        this.played_duration = i3;
        this.size = j2;
        this.mime_type = str;
        this.playbackCompletionDate = date == null ? null : (Date) date.clone();
    }

    public FeedMedia(long j, FeedItem feedItem) {
        this.id = j;
        this.item = feedItem;
    }
}
