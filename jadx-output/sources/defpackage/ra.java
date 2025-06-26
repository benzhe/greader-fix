package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class ra extends ClickableSpan {
    public final int e;
    public final sa f;
    public final int g;

    public ra(int i, sa saVar, int i2) {
        this.e = i;
        this.f = saVar;
        this.g = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.e);
        sa saVar = this.f;
        saVar.a.performAction(this.g, bundle);
    }
}
