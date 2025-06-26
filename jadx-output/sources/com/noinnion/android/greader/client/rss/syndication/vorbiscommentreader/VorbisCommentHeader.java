package com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader;

import defpackage.jo;

/* loaded from: classes2.dex */
public class VorbisCommentHeader {
    private long userCommentLength;
    private String vendorString;

    public VorbisCommentHeader(String str, long j) {
        this.vendorString = str;
        this.userCommentLength = j;
    }

    public long getUserCommentLength() {
        return this.userCommentLength;
    }

    public String getVendorString() {
        return this.vendorString;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("VorbisCommentHeader [vendorString=");
        sbZ.append(this.vendorString);
        sbZ.append(", userCommentLength=");
        return jo.r(sbZ, this.userCommentLength, "]");
    }
}
