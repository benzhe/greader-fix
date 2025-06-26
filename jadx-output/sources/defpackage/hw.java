package defpackage;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class hw implements DialogInterface.OnClickListener {
    public final /* synthetic */ gw e;

    public hw(gw gwVar) {
        this.e = gwVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzr.zzkv();
        zzj.zzb(this.e.e, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
