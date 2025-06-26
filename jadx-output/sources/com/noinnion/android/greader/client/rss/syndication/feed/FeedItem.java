package com.noinnion.android.greader.client.rss.syndication.feed;

import android.text.TextUtils;
import defpackage.jo;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
public class FeedItem extends FeedComponent {
    private List<Chapter> chapters;
    private String contentEncoded;
    private String description;
    private Feed feed;
    private long feedId;
    private FeedImage image;
    private String itemIdentifier;
    private String link;
    private FeedMedia media;
    private String paymentLink;
    private Date pubDate;
    private boolean read;
    private String title;

    public enum State {
        NEW,
        IN_PROGRESS,
        READ,
        PLAYING
    }

    public FeedItem() {
        this.read = true;
    }

    private boolean isInProgress() {
        FeedMedia feedMedia = this.media;
        return feedMedia != null && feedMedia.isInProgress();
    }

    private boolean isPlaying() {
        FeedMedia feedMedia = this.media;
        return feedMedia != null && feedMedia.isPlaying();
    }

    public List<Chapter> getChapters() {
        return this.chapters;
    }

    public String getContentEncoded() {
        return this.contentEncoded;
    }

    public String getDescription() {
        return this.description;
    }

    public Feed getFeed() {
        return this.feed;
    }

    public long getFeedId() {
        return this.feedId;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public String getHumanReadableIdentifier() {
        return this.title;
    }

    public String getIdentifyingValue() {
        String str = this.itemIdentifier;
        if (str != null && !str.isEmpty()) {
            return this.itemIdentifier;
        }
        String str2 = this.title;
        return (str2 == null || str2.isEmpty()) ? this.link : this.title;
    }

    public FeedImage getImage() {
        return hasItemImage() ? this.image : this.feed.getImage();
    }

    public String getItemIdentifier() {
        return this.itemIdentifier;
    }

    public String getLink() {
        if (!TextUtils.isEmpty(this.link)) {
            return this.link;
        }
        if (hasMedia()) {
            return getMedia().getDownloadUrl();
        }
        return null;
    }

    public FeedMedia getMedia() {
        return this.media;
    }

    public String getPaymentLink() {
        return this.paymentLink;
    }

    public Date getPubDate() {
        Date date = this.pubDate;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public State getState() {
        if (hasMedia()) {
            if (isPlaying()) {
                return State.PLAYING;
            }
            if (isInProgress()) {
                return State.IN_PROGRESS;
            }
        }
        return isRead() ? State.READ : State.NEW;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean hasItemImage() {
        return this.image != null;
    }

    public boolean hasItemImageDownloaded() {
        FeedImage feedImage = this.image;
        return feedImage != null && feedImage.isDownloaded();
    }

    public boolean hasMedia() {
        return this.media != null;
    }

    public boolean isRead() {
        return this.read || isInProgress();
    }

    public void setChapters(List<Chapter> list) {
        this.chapters = list;
    }

    public void setContentEncoded(String str) {
        this.contentEncoded = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFeed(Feed feed) {
        this.feed = feed;
    }

    public void setFeedId(long j) {
        this.feedId = j;
    }

    public void setImage(FeedImage feedImage) {
        this.image = feedImage;
        if (feedImage != null) {
            feedImage.setOwner(this);
        }
    }

    public void setItemIdentifier(String str) {
        this.itemIdentifier = str;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setMedia(FeedMedia feedMedia) {
        this.media = feedMedia;
        if (feedMedia == null || feedMedia.getItem() == this) {
            return;
        }
        feedMedia.setItem(this);
    }

    public void setPaymentLink(String str) {
        this.paymentLink = str;
    }

    public void setPubDate(Date date) {
        if (date != null) {
            this.pubDate = (Date) date.clone();
        } else {
            this.pubDate = null;
        }
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        FeedMedia feedMedia = this.media;
        return jo.t(new StringBuilder(), this.title, " - ", feedMedia != null ? feedMedia.getDownloadUrl() : null);
    }

    public void updateFromOther(FeedItem feedItem) {
        super.updateFromOther((FeedComponent) feedItem);
        String str = feedItem.title;
        if (str != null) {
            this.title = str;
        }
        if (feedItem.getDescription() != null) {
            this.description = feedItem.getDescription();
        }
        if (feedItem.getContentEncoded() != null) {
            this.contentEncoded = feedItem.contentEncoded;
        }
        String str2 = feedItem.link;
        if (str2 != null) {
            this.link = str2;
        }
        Date date = feedItem.pubDate;
        if (date != null && date != this.pubDate) {
            this.pubDate = date;
        }
        FeedMedia feedMedia = feedItem.media;
        if (feedMedia != null) {
            FeedMedia feedMedia2 = this.media;
            if (feedMedia2 == null) {
                setMedia(feedMedia);
            } else if (feedMedia2.compareWithOther(feedItem)) {
                this.media.updateFromOther(feedItem);
            }
        }
        String str3 = feedItem.paymentLink;
        if (str3 != null) {
            this.paymentLink = str3;
        }
        List<Chapter> list = feedItem.chapters;
        if (list != null && this.chapters == null) {
            this.chapters = list;
        }
        if (this.image == null) {
            this.image = feedItem.image;
        }
    }

    public FeedItem(long j, String str, String str2, String str3, Date date, boolean z, Feed feed) {
        this.id = j;
        this.title = str;
        this.itemIdentifier = str2;
        this.link = str3;
        this.pubDate = date != null ? (Date) date.clone() : null;
        this.read = z;
        this.feed = feed;
    }
}
