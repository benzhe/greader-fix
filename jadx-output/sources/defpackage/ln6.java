package defpackage;

import android.app.Activity;
import android.content.DialogInterface;
import com.noinnion.android.greader.reader.R;
import java.io.File;

/* loaded from: classes2.dex */
public final class ln6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ap6 e;
    public final /* synthetic */ cp6 f;
    public final /* synthetic */ Activity g;

    public ln6(ap6 ap6Var, cp6 cp6Var, Activity activity) {
        this.e = ap6Var;
        this.f = cp6Var;
        this.g = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String strI0;
        if (this.e.b() && (strI0 = n56.I0(this.f.a, this.e.f)) != null) {
            File file = new File(strI0);
            if (file.exists()) {
                n56.A1(this.g, file);
                return;
            }
            if (!cn6.d0(this.g)) {
                Activity activity = this.g;
                n56.X1(activity, activity.getText(R.string.limit_podcast_download));
            } else {
                Activity activity2 = this.g;
                String str = this.f.a;
                n56.r0(activity2, str, n56.I0(str, this.e.f), this.f.b);
            }
        }
    }
}
