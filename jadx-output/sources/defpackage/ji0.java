package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class ji0 extends ah0 {
    public final UnifiedNativeAdMapper e;

    public ji0(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.e = unifiedNativeAdMapper;
    }

    @Override // defpackage.bh0
    public final x20 C() {
        View adChoicesContent = this.e.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new y20(adChoicesContent);
    }

    @Override // defpackage.bh0
    public final boolean F() {
        return this.e.getOverrideClickHandling();
    }

    @Override // defpackage.bh0
    public final float H1() {
        return this.e.getCurrentTime();
    }

    @Override // defpackage.bh0
    public final float V0() {
        return this.e.getMediaContentAspectRatio();
    }

    @Override // defpackage.bh0
    public final float a2() {
        return this.e.getDuration();
    }

    @Override // defpackage.bh0
    public final String d() {
        return this.e.getHeadline();
    }

    @Override // defpackage.bh0
    public final String e() {
        return this.e.getCallToAction();
    }

    @Override // defpackage.bh0
    public final m70 f() {
        return null;
    }

    @Override // defpackage.bh0
    public final String g() {
        return this.e.getBody();
    }

    @Override // defpackage.bh0
    public final Bundle getExtras() {
        return this.e.getExtras();
    }

    @Override // defpackage.bh0
    public final su3 getVideoController() {
        if (this.e.getVideoController() != null) {
            return this.e.getVideoController().zzdz();
        }
        return null;
    }

    @Override // defpackage.bh0
    public final List i() {
        List<NativeAd.Image> images = this.e.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new h70(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // defpackage.bh0
    public final String k() {
        return this.e.getPrice();
    }

    @Override // defpackage.bh0
    public final x20 o() {
        Object objZzka = this.e.zzka();
        if (objZzka == null) {
            return null;
        }
        return new y20(objZzka);
    }

    @Override // defpackage.bh0
    public final u70 p() {
        NativeAd.Image icon = this.e.getIcon();
        if (icon != null) {
            return new h70(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // defpackage.bh0
    public final double q() {
        if (this.e.getStarRating() != null) {
            return this.e.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // defpackage.bh0
    public final String r() {
        return this.e.getAdvertiser();
    }

    @Override // defpackage.bh0
    public final void recordImpression() {
        this.e.recordImpression();
    }

    @Override // defpackage.bh0
    public final String s() {
        return this.e.getStore();
    }

    @Override // defpackage.bh0
    public final void v(x20 x20Var) {
        this.e.handleClick((View) y20.l0(x20Var));
    }

    @Override // defpackage.bh0
    public final boolean w() {
        return this.e.getOverrideImpressionRecording();
    }

    @Override // defpackage.bh0
    public final void x(x20 x20Var, x20 x20Var2, x20 x20Var3) {
        this.e.trackViews((View) y20.l0(x20Var), (HashMap) y20.l0(x20Var2), (HashMap) y20.l0(x20Var3));
    }

    @Override // defpackage.bh0
    public final void y(x20 x20Var) {
        this.e.untrackView((View) y20.l0(x20Var));
    }

    @Override // defpackage.bh0
    public final x20 z() {
        View viewZzafo = this.e.zzafo();
        if (viewZzafo == null) {
            return null;
        }
        return new y20(viewZzafo);
    }
}
