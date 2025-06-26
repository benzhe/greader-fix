package defpackage;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.youtube.player.YouTubePlayerView;
import com.google.android.youtube.player.internal.n;
import defpackage.ed5;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pc5 implements ed5.a {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ YouTubePlayerView b;

    public pc5(YouTubePlayerView youTubePlayerView, Activity activity) {
        this.b = youTubePlayerView;
        this.a = activity;
    }

    @Override // ed5.a
    public final void a() {
        dd5 dd5Var;
        YouTubePlayerView youTubePlayerView = this.b;
        if (!youTubePlayerView.o && (dd5Var = youTubePlayerView.i) != null) {
            Objects.requireNonNull(dd5Var);
            try {
                dd5Var.b.s6();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
        n nVar = this.b.k;
        nVar.e.setVisibility(8);
        nVar.f.setVisibility(8);
        YouTubePlayerView youTubePlayerView2 = this.b;
        if (youTubePlayerView2.indexOfChild(youTubePlayerView2.k) < 0) {
            YouTubePlayerView youTubePlayerView3 = this.b;
            youTubePlayerView3.addView(youTubePlayerView3.k);
            YouTubePlayerView youTubePlayerView4 = this.b;
            youTubePlayerView4.removeView(youTubePlayerView4.j);
        }
        YouTubePlayerView youTubePlayerView5 = this.b;
        youTubePlayerView5.j = null;
        youTubePlayerView5.i = null;
        youTubePlayerView5.h = null;
    }

    @Override // ed5.a
    public final void t() {
        YouTubePlayerView youTubePlayerView = this.b;
        if (youTubePlayerView.h != null) {
            YouTubePlayerView.d(youTubePlayerView, this.a);
        }
        this.b.h = null;
    }
}
