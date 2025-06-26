package com.noinnion.android.reader.common.subscription;

import defpackage.jo;

/* loaded from: classes2.dex */
public class Feed {
    public String content;
    public long id;
    public String image;
    public boolean selected;
    public String title;
    public String url;

    public Feed() {
        this.id = -1L;
        this.selected = false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.title);
        sb.append("(");
        return jo.s(sb, this.url, ")");
    }

    public Feed(String str, String str2) {
        this(str, str2, null);
    }

    public Feed(String str, String str2, String str3) {
        this.id = -1L;
        this.selected = false;
        this.title = (str == null || str.length() == 0) ? "RSS" : str;
        this.url = str2;
        this.image = str3;
    }
}
