package com.noinnion.android.reader.webservice.feedly.model;

import com.noinnion.android.greader.client.rss.RssReaderClient;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class Feed {
    public String contentType;
    public String coverUrl;
    public double coverage;
    public double coverageScore;
    public boolean curated;
    public List<String> deliciousTags = new ArrayList();
    public String description;
    public int estimatedEngagement;
    public boolean featured;
    public String feedId;
    public String hint;
    public String iconUrl;
    public String language;
    public long lastUpdated;
    public String scheme;
    public double score;
    public int subscribers;
    public String title;
    public double velocity;
    public String visualUrl;
    public String website;

    public String getFeedUrl() {
        return this.feedId.replaceFirst(RssReaderClient.USER_FEED, "");
    }
}
