package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class rh0 extends ug0 {
    public final NativeAppInstallAdMapper e;

    public rh0(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.e = nativeAppInstallAdMapper;
    }

    @Override // defpackage.vg0
    public final x20 C() {
        View adChoicesContent = this.e.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new y20(adChoicesContent);
    }

    @Override // defpackage.vg0
    public final boolean F() {
        return this.e.getOverrideClickHandling();
    }

    @Override // defpackage.vg0
    public final void K(x20 x20Var) {
        this.e.trackView((View) y20.l0(x20Var));
    }

    @Override // defpackage.vg0
    public final String d() {
        return this.e.getHeadline();
    }

    @Override // defpackage.vg0
    public final String e() {
        return this.e.getCallToAction();
    }

    @Override // defpackage.vg0
    public final m70 f() {
        return null;
    }

    @Override // defpackage.vg0
    public final String g() {
        return this.e.getBody();
    }

    @Override // defpackage.vg0
    public final Bundle getExtras() {
        return this.e.getExtras();
    }

    @Override // defpackage.vg0
    public final su3 getVideoController() {
        if (this.e.getVideoController() != null) {
            return this.e.getVideoController().zzdz();
        }
        return null;
    }

    @Override // defpackage.vg0
    public final List i() {
        List<NativeAd.Image> images = this.e.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new h70(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // defpackage.vg0
    public final String k() {
        return this.e.getPrice();
    }

    @Override // defpackage.vg0
    public final x20 o() {
        return null;
    }

    @Override // defpackage.vg0
    public final u70 p() {
        NativeAd.Image icon = this.e.getIcon();
        if (icon != null) {
            return new h70(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // defpackage.vg0
    public final double q() {
        return this.e.getStarRating();
    }

    @Override // defpackage.vg0
    public final void recordImpression() {
        this.e.recordImpression();
    }

    @Override // defpackage.vg0
    public final String s() {
        return this.e.getStore();
    }

    @Override // defpackage.vg0
    public final void v(x20 x20Var) {
        this.e.handleClick((View) y20.l0(x20Var));
    }

    @Override // defpackage.vg0
    public final boolean w() {
        return this.e.getOverrideImpressionRecording();
    }

    @Override // defpackage.vg0
    public final void x(x20 x20Var, x20 x20Var2, x20 x20Var3) {
        this.e.trackViews((View) y20.l0(x20Var), (HashMap) y20.l0(x20Var2), (HashMap) y20.l0(x20Var3));
    }

    @Override // defpackage.vg0
    public final void y(x20 x20Var) {
        this.e.untrackView((View) y20.l0(x20Var));
    }

    @Override // defpackage.vg0
    public final x20 z() {
        View viewZzafo = this.e.zzafo();
        if (viewZzafo == null) {
            return null;
        }
        return new y20(viewZzafo);
    }
}
