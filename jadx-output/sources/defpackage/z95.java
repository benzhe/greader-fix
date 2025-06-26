package defpackage;

import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes.dex */
public class z95 extends aa5 {
    public final /* synthetic */ TextPaint a;
    public final /* synthetic */ aa5 b;
    public final /* synthetic */ y95 c;

    public z95(y95 y95Var, TextPaint textPaint, aa5 aa5Var) {
        this.c = y95Var;
        this.a = textPaint;
        this.b = aa5Var;
    }

    @Override // defpackage.aa5
    public void a(int i) {
        this.b.a(i);
    }

    @Override // defpackage.aa5
    public void b(Typeface typeface, boolean z) {
        this.c.d(this.a, typeface);
        this.b.b(typeface, z);
    }
}
