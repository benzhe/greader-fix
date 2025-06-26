package com.noinnion.android.greader.client.rss.syndication.feed;

import java.io.File;

/* loaded from: classes2.dex */
public abstract class FeedFile extends FeedComponent {
    public String download_url;
    public boolean downloaded;
    public String file_url;

    public FeedFile(String str, String str2, boolean z) {
        this.file_url = str;
        this.download_url = str2;
        this.downloaded = str != null && z;
    }

    public boolean compareWithOther(FeedFile feedFile) {
        return super.compareWithOther((FeedComponent) feedFile) || !this.download_url.equals(feedFile.download_url);
    }

    public boolean fileExists() {
        if (this.file_url == null) {
            return false;
        }
        return new File(this.file_url).exists();
    }

    public String getDownloadUrl() {
        return this.download_url;
    }

    public String getFile_url() {
        return this.file_url;
    }

    public abstract int getTypeAsInt();

    public boolean isDownloaded() {
        return this.downloaded;
    }

    public void setDownloadUrl(String str) {
        this.download_url = str;
    }

    public void setDownloaded(boolean z) {
        this.downloaded = z;
    }

    public void setFileUrl(String str) {
        this.file_url = str;
        if (str == null) {
            this.downloaded = false;
        }
    }

    public void updateFromOther(FeedFile feedFile) {
        super.updateFromOther((FeedComponent) feedFile);
        this.download_url = feedFile.download_url;
    }

    public FeedFile() {
        this(null, null, false);
    }
}
