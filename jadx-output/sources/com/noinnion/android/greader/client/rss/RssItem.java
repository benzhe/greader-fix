package com.noinnion.android.greader.client.rss;

import defpackage.ap6;

/* loaded from: classes2.dex */
public class RssItem {
    public String audio;
    public String author;
    public String content;
    public String feed;
    public String image;
    public long publishedTime;
    public boolean read;
    public String title;
    public String uid;
    public long updatedTime;
    public String video;

    public RssItem() {
    }

    public ap6 getItem() {
        ap6 ap6Var = new ap6();
        String str = this.uid;
        ap6Var.f = str;
        ap6Var.k = str;
        ap6Var.h = this.title;
        ap6Var.i = this.content;
        String str2 = this.author;
        ap6Var.j = str2;
        ap6Var.l = this.image;
        ap6Var.m = this.video;
        ap6Var.n = this.audio;
        ap6Var.j = str2;
        ap6Var.q = this.updatedTime;
        ap6Var.p = this.publishedTime;
        ap6Var.v = this.read;
        ap6Var.r = true;
        ap6Var.z = this.feed;
        ap6Var.y.add(RssReaderClient.USER_STARRED);
        return ap6Var;
    }

    public RssItem(ap6 ap6Var) {
        this.uid = ap6Var.f;
        this.title = ap6Var.h;
        this.content = ap6Var.i;
        String str = ap6Var.j;
        this.author = str;
        this.image = ap6Var.l;
        this.video = ap6Var.m;
        this.audio = ap6Var.n;
        this.author = str;
        this.updatedTime = ap6Var.q;
        this.publishedTime = ap6Var.p;
        this.read = ap6Var.v;
    }
}
