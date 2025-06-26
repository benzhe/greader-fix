package com.noinnion.android.reader.util.gson;

import java.util.List;

/* loaded from: classes2.dex */
public class Help {
    public String changelog;
    public String faq;
    public List<Listing> listings;
    public String website;

    public class Listing {
        public String description;
        public String title;
        public String url;

        public Listing() {
        }
    }
}
