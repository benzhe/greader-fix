package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class qj0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ nj0 e;

    public qj0(nj0 nj0Var) {
        this.e = nj0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        nj0 nj0Var = this.e;
        Objects.requireNonNull(nj0Var);
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", nj0Var.e);
        data.putExtra("eventLocation", nj0Var.i);
        data.putExtra(NSRSS20.DESCR, nj0Var.h);
        long j = nj0Var.f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = nj0Var.g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        zzr.zzkv();
        zzj.zza(this.e.d, data);
    }
}
