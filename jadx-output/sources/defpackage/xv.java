package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class xv extends zza {
    public final /* synthetic */ zze b;

    public xv(zze zzeVar, tv tvVar) {
        this.b = zzeVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        Bitmap bitmapZza = zzr.zzlo().zza(Integer.valueOf(this.b.f.zzdum.zzbpt));
        if (bitmapZza != null) {
            com.google.android.gms.ads.internal.util.zzr zzrVarZzkx = zzr.zzkx();
            zze zzeVar = this.b;
            Activity activity = zzeVar.e;
            zzk zzkVar = zzeVar.f.zzdum;
            final Drawable drawableZza = zzrVarZzkx.zza(activity, bitmapZza, zzkVar.zzbpr, zzkVar.zzbps);
            zzj.zzegq.post(new Runnable(this, drawableZza) { // from class: yv
                public final xv e;
                public final Drawable f;

                {
                    this.e = this;
                    this.f = drawableZza;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    xv xvVar = this.e;
                    xvVar.b.e.getWindow().setBackgroundDrawable(this.f);
                }
            });
        }
    }
}
