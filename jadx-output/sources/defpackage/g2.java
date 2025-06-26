package defpackage;

import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner;

/* loaded from: classes.dex */
public class g2 extends p2 {
    public final /* synthetic */ AppCompatSpinner.d n;
    public final /* synthetic */ AppCompatSpinner o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g2(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.d dVar) {
        super(view);
        this.o = appCompatSpinner;
        this.n = dVar;
    }

    @Override // defpackage.p2
    public s1 b() {
        return this.n;
    }

    @Override // defpackage.p2
    public boolean c() {
        if (this.o.getInternalPopup().a()) {
            return true;
        }
        this.o.b();
        return true;
    }
}
