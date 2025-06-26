package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
public class NativeAdMapper {
    public boolean a;
    public boolean b;
    public Bundle c = new Bundle();
    public View d;
    public View e;
    public VideoController f;
    public boolean g;

    public View getAdChoicesContent() {
        return this.d;
    }

    public final Bundle getExtras() {
        return this.c;
    }

    public final boolean getOverrideClickHandling() {
        return this.b;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.a;
    }

    public final VideoController getVideoController() {
        return this.f;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.g;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.d = view;
    }

    public final void setExtras(Bundle bundle) {
        this.c = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.g = z;
    }

    public void setMediaView(View view) {
        this.e = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.b = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.a = z;
    }

    @Deprecated
    public void trackView(View view) {
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.f = videoController;
    }

    public final View zzafo() {
        return this.e;
    }
}
