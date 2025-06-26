package defpackage;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class wj0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ uj0 g;

    public wj0(uj0 uj0Var, String str, String str2) {
        this.g = uj0Var;
        this.e = str;
        this.f = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws JSONException {
        DownloadManager downloadManager = (DownloadManager) this.g.d.getSystemService("download");
        try {
            String str = this.e;
            String str2 = this.f;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzr.zzkv();
            zzj.zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.g.d("Could not store picture.");
        }
    }
}
