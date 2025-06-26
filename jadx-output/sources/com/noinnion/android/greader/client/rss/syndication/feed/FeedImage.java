package com.noinnion.android.greader.client.rss.syndication.feed;

/* loaded from: classes2.dex */
public class FeedImage extends FeedFile {
    public static final int FEEDFILETYPE_FEEDIMAGE = 1;
    public FeedComponent owner;
    public String title;

    public FeedImage(String str, String str2) {
        super(null, str, false);
        this.download_url = str;
        this.title = str2;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedComponent
    public String getHumanReadableIdentifier() {
        FeedComponent feedComponent = this.owner;
        return (feedComponent == null || feedComponent.getHumanReadableIdentifier() == null) ? this.download_url : this.owner.getHumanReadableIdentifier();
    }

    public FeedComponent getOwner() {
        return this.owner;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.FeedFile
    public int getTypeAsInt() {
        return 1;
    }

    public void setOwner(FeedComponent feedComponent) {
        this.owner = feedComponent;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public FeedImage(long j, String str, String str2, String str3, boolean z) {
        super(str2, str3, z);
        this.id = j;
        this.title = str;
    }

    public FeedImage() {
    }
}
