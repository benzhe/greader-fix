package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.provider.MediaStore;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.io.File;
import java.util.Calendar;
import java.util.Observable;

/* loaded from: classes2.dex */
public class dw6 extends Observable implements Runnable {
    public static final String[] p = {"Downloading", "Paused", "Complete", "Cancelled", "Error"};
    public Context e;
    public String f;
    public int i;
    public String j;
    public String k;
    public String l;
    public Messenger o;
    public long m = 0;
    public long n = 0;
    public long g = -1;
    public long h = 0;

    public dw6(Context context, String str, String str2, String str3) throws RemoteException {
        this.e = context;
        this.f = str;
        this.j = str2;
        this.l = str3;
        this.i = -1;
        if (new File(str2).exists()) {
            this.i = 2;
            d();
        }
    }

    public void a() throws RemoteException {
        this.i = 3;
        d();
    }

    public final void b() throws RemoteException {
        this.i = 4;
        d();
    }

    public float c() {
        return (this.h / 1024) / ((Calendar.getInstance().getTimeInMillis() - this.n) / 1000);
    }

    public final void d() throws RemoteException {
        Uri uriInsert;
        int i = this.i;
        if (i == 2) {
            File file = new File(this.j);
            if (file.exists()) {
                Context context = this.e;
                String str = this.l;
                ContentValues contentValues = new ContentValues();
                contentValues.put("title", file.getName());
                contentValues.put("_display_name", file.getName());
                contentValues.put("mime_type", str);
                String lowerCase = file.getParentFile().toString().toLowerCase();
                contentValues.put("_data", file.getAbsolutePath());
                contentValues.put("_size", Long.valueOf(file.length()));
                if (str.startsWith(NSRSS20.IMAGE)) {
                    contentValues.put("bucket_id", Integer.valueOf(lowerCase.hashCode()));
                    contentValues.put("bucket_display_name", "gReader");
                    uriInsert = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                } else if (str.startsWith("video")) {
                    contentValues.put("bucket_id", Integer.valueOf(lowerCase.hashCode()));
                    contentValues.put("bucket_display_name", "gReader");
                    uriInsert = context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
                } else if (str.startsWith("audio")) {
                    contentValues.put("album", "gReader");
                    contentValues.put("artist", "gReader");
                    Boolean bool = Boolean.FALSE;
                    contentValues.put("is_ringtone", bool);
                    contentValues.put("is_notification", bool);
                    contentValues.put("is_alarm", bool);
                    contentValues.put("is_music", Boolean.TRUE);
                    uriInsert = context.getContentResolver().insert(MediaStore.Audio.Media.getContentUriForPath(file.getAbsolutePath()), contentValues);
                } else {
                    uriInsert = null;
                }
                if (uriInsert != null) {
                    context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", uriInsert));
                }
            }
        } else if (i == 3) {
            File file2 = new File(jo.s(new StringBuilder(), this.j, ".tmp"));
            if (file2.exists()) {
                file2.delete();
            }
        }
        if (this.i > 1) {
            try {
                Message message = new Message();
                message.what = 1;
                Messenger messenger = this.o;
                if (messenger != null) {
                    messenger.send(message);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        setChanged();
        notifyObservers();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0200 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01da A[Catch: Exception -> 0x01f5, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x01f5, blocks: (B:79:0x01da, B:91:0x01f2), top: B:112:0x0005 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dw6.run():void");
    }
}
