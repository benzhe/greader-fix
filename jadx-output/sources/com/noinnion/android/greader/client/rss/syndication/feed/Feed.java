package com.noinnion.android.greader.client.rss.syndication.feed;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
public class Feed extends FeedFile {
    public static final int FEEDFILETYPE_FEED = 0;
    public static final String TYPE_ATOM1 = "atom";
    public static final String TYPE_RSS091 = "rss";
    public static final String TYPE_RSS2 = "rss";
    private String author;
    private String description;
    private String feedIdentifier;
    private FeedImage image;
    private List<FeedItem> items;
    private String language;
    private Date lastUpdate;
    private String link;
    private String paymentLink;
    private String title;
    private String type;

    public Feed(long j, Date date, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, FeedImage feedImage, String str9, String str10, boolean z) {
        super(str9, str10, z);
        this.id = j;
        this.title = str;
        if (date != null) {
            this.lastUpdate = (Date) date.clone();
        } else {
            this.lastUpdate = null;
        }
        this.link = str2;
        this.description = str3;
        this.paymentLink = str4;
        this.author = str5;
        this.language = str6;
        this.type = str7;
        this.feedIdentifier = str8;
        this.image = feedImage;
        this.items = new ArrayList();
    }

    public boolean compareWithOther(Feed feed) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (super.compareWithOther((FeedFile) feed) || !this.title.equals(feed.title)) {
            return true;
        }
        String str6 = feed.feedIdentifier;
        if (str6 != null && ((str5 = this.feedIdentifier) == null || !str5.equals(str6))) {
            return true;
        }
        String str7 = feed.link;
        if (str7 != null && ((str4 = this.link) == null || !str4.equals(str7))) {
            return true;
        }
        String str8 = feed.description;
        if (str8 != null && ((str3 = this.description) == null || !str3.equals(str8))) {
            return true;
        }
        String str9 = feed.language;
        if (str9 != null && ((str2 = this.language) == null || !str2.equals(str9))) {
            return true;
        }
        String str10 = feed.author;
        if (str10 != null && ((str = this.author) == null || !str.equals(str10))) {
            return true;
        }
        String str11 = feed.paymentLink;
        if (str11 == null) {
            return false;
        }
        String str12 = this.paymentLink;
        return str12 == null || !str12.equals(str11);
    }

    public String getAuthor() {
        return this.author;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFeedIdentifier() {
        return this.feedIdentifier;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public String getHumanReadableIdentifier() {
        String str = this.title;
        return str != null ? str : this.download_url;
    }

    public FeedImage getImage() {
        return this.image;
    }

    public List<FeedItem> getItems() {
        return this.items;
    }

    public String getLanguage() {
        return this.language;
    }

    public Date getLastUpdate() {
        Date date = this.lastUpdate;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public String getLink() {
        return this.link;
    }

    public String getPaymentLink() {
        return this.paymentLink;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedFile
    public int getTypeAsInt() {
        return 0;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFeedIdentifier(String str) {
        this.feedIdentifier = str;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public void setId(long j) {
        super.setId(j);
    }

    public void setImage(FeedImage feedImage) {
        this.image = feedImage;
    }

    public void setItems(List<FeedItem> list) {
        this.items = list;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLastUpdate(Date date) {
        this.lastUpdate = date != null ? (Date) date.clone() : null;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setPaymentLink(String str) {
        this.paymentLink = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void updateFromOther(Feed feed) {
        super.updateFromOther((FeedFile) feed);
        String str = feed.title;
        if (str != null) {
            this.title = str;
        }
        String str2 = feed.feedIdentifier;
        if (str2 != null) {
            this.feedIdentifier = str2;
        }
        String str3 = feed.link;
        if (str3 != null) {
            this.link = str3;
        }
        String str4 = feed.description;
        if (str4 != null) {
            this.description = str4;
        }
        String str5 = feed.language;
        if (str5 != null) {
            this.language = str5;
        }
        String str6 = feed.author;
        if (str6 != null) {
            this.author = str6;
        }
        String str7 = feed.paymentLink;
        if (str7 != null) {
            this.paymentLink = str7;
        }
    }

    public Feed() {
        this.items = new ArrayList();
        this.lastUpdate = new Date();
    }

    public Feed(String str, Date date) {
        super(null, str, false);
        this.lastUpdate = date != null ? (Date) date.clone() : null;
    }

    public Feed(String str, Date date, String str2) {
        this(str, date);
        this.title = str2;
    }
}
