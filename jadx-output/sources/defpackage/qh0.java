package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class qh0 extends zg0 {
    public final NativeContentAdMapper e;

    public qh0(NativeContentAdMapper nativeContentAdMapper) {
        this.e = nativeContentAdMapper;
    }

    @Override // defpackage.wg0
    public final x20 C() {
        View adChoicesContent = this.e.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new y20(adChoicesContent);
    }

    @Override // defpackage.wg0
    public final boolean F() {
        return this.e.getOverrideClickHandling();
    }

    @Override // defpackage.wg0
    public final void K(x20 x20Var) {
        this.e.trackView((View) y20.l0(x20Var));
    }

    @Override // defpackage.wg0
    public final u70 R() {
        NativeAd.Image logo = this.e.getLogo();
        if (logo != null) {
            return new h70(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // defpackage.wg0
    public final String d() {
        return this.e.getHeadline();
    }

    @Override // defpackage.wg0
    public final String e() {
        return this.e.getCallToAction();
    }

    @Override // defpackage.wg0
    public final m70 f() {
        return null;
    }

    @Override // defpackage.wg0
    public final String g() {
        return this.e.getBody();
    }

    @Override // defpackage.wg0
    public final Bundle getExtras() {
        return this.e.getExtras();
    }

    @Override // defpackage.wg0
    public final su3 getVideoController() {
        if (this.e.getVideoController() != null) {
            return this.e.getVideoController().zzdz();
        }
        return null;
    }

    @Override // defpackage.wg0
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

    @Override // defpackage.wg0
    public final x20 o() {
        return null;
    }

    @Override // defpackage.wg0
    public final String r() {
        return this.e.getAdvertiser();
    }

    @Override // defpackage.wg0
    public final void recordImpression() {
        this.e.recordImpression();
    }

    @Override // defpackage.wg0
    public final void v(x20 x20Var) {
        this.e.handleClick((View) y20.l0(x20Var));
    }

    @Override // defpackage.wg0
    public final boolean w() {
        return this.e.getOverrideImpressionRecording();
    }

    @Override // defpackage.wg0
    public final void x(x20 x20Var, x20 x20Var2, x20 x20Var3) {
        this.e.trackViews((View) y20.l0(x20Var), (HashMap) y20.l0(x20Var2), (HashMap) y20.l0(x20Var3));
    }

    @Override // defpackage.wg0
    public final void y(x20 x20Var) {
        this.e.untrackView((View) y20.l0(x20Var));
    }

    @Override // defpackage.wg0
    public final x20 z() {
        View viewZzafo = this.e.zzafo();
        if (viewZzafo == null) {
            return null;
        }
        return new y20(viewZzafo);
    }
}
