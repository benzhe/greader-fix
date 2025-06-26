package com.noinnion.android.reader.common.subscription;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BundleItem {
    public String image;
    public String title;
    public String uid;
    public List<Subscription> subscriptions = new ArrayList();
    public List<String> related = new ArrayList();

    public static class Subscription {
        public String description;
        public String image;
        public boolean isFeatured = false;
        public String title;
        public String uid;
        public String url;
    }
}
