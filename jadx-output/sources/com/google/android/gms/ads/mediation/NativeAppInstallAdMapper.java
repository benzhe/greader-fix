package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public class NativeAppInstallAdMapper extends NativeAdMapper {
    public String h;
    public List<NativeAd.Image> i;
    public String j;
    public NativeAd.Image k;
    public String l;
    public double m;
    public String n;
    public String o;

    public final String getBody() {
        return this.j;
    }

    public final String getCallToAction() {
        return this.l;
    }

    public final String getHeadline() {
        return this.h;
    }

    public final NativeAd.Image getIcon() {
        return this.k;
    }

    public final List<NativeAd.Image> getImages() {
        return this.i;
    }

    public final String getPrice() {
        return this.o;
    }

    public final double getStarRating() {
        return this.m;
    }

    public final String getStore() {
        return this.n;
    }

    public final void setBody(String str) {
        this.j = str;
    }

    public final void setCallToAction(String str) {
        this.l = str;
    }

    public final void setHeadline(String str) {
        this.h = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.k = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.i = list;
    }

    public final void setPrice(String str) {
        this.o = str;
    }

    public final void setStarRating(double d) {
        this.m = d;
    }

    public final void setStore(String str) {
        this.n = str;
    }
}
