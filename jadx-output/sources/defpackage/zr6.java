package defpackage;

import android.net.Uri;
import android.os.AsyncTask;
import com.noinnion.android.greader.ui.media.MusicService;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class zr6 extends AsyncTask<Void, Void, Void> {
    public yr6 a;
    public a b;

    public interface a {
    }

    public zr6(yr6 yr6Var, a aVar) {
        this.a = yr6Var;
        this.b = aVar;
    }

    @Override // android.os.AsyncTask
    public Void doInBackground(Void[] voidArr) {
        Objects.requireNonNull(this.a);
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Void r2) throws IllegalStateException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        MusicService musicService = (MusicService) this.b;
        musicService.g = MusicService.d.Stopped;
        if (musicService.h) {
            musicService.m();
            Uri uri = musicService.i;
            musicService.e(uri == null ? null : uri.toString());
        }
    }
}
