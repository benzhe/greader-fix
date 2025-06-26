package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* loaded from: classes.dex */
public class s65 extends ViewOutlineProvider {
    public final /* synthetic */ Chip a;

    public s65(Chip chip) {
        this.a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        t65 t65Var = this.a.h;
        if (t65Var != null) {
            t65Var.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
