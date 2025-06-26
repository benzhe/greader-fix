package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public class NativeContentAdMapper extends NativeAdMapper {
    public String h;
    public List<NativeAd.Image> i;
    public String j;
    public NativeAd.Image k;
    public String l;
    public String m;

    public final String getAdvertiser() {
        return this.m;
    }

    public final String getBody() {
        return this.j;
    }

    public final String getCallToAction() {
        return this.l;
    }

    public final String getHeadline() {
        return this.h;
    }

    public final List<NativeAd.Image> getImages() {
        return this.i;
    }

    public final NativeAd.Image getLogo() {
        return this.k;
    }

    public final void setAdvertiser(String str) {
        this.m = str;
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

    public final void setImages(List<NativeAd.Image> list) {
        this.i = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.k = image;
    }
}
