package defpackage;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class kn6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ap6 e;
    public final /* synthetic */ Activity f;
    public final /* synthetic */ cp6 g;

    public kn6(ap6 ap6Var, Activity activity, cp6 cp6Var) {
        this.e = ap6Var;
        this.f = activity;
        this.g = cp6Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.e.b()) {
            try {
                Activity activity = this.f;
                cp6 cp6Var = this.g;
                n56.C1(activity, cp6Var.a, cp6Var.b);
            } catch (Exception e) {
                n56.X1(this.f, e.getLocalizedMessage());
            }
        }
    }
}
