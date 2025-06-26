package defpackage;

import com.google.android.youtube.player.YouTubePlayerView;
import defpackage.ed5;

/* loaded from: classes.dex */
public final class qc5 implements ed5.b {
    public final /* synthetic */ YouTubePlayerView a;

    public qc5(YouTubePlayerView youTubePlayerView) {
        this.a = youTubePlayerView;
    }

    @Override // ed5.b
    public final void a(nc5 nc5Var) {
        YouTubePlayerView youTubePlayerView = this.a;
        int i = YouTubePlayerView.p;
        youTubePlayerView.c(nc5Var);
        this.a.h = null;
    }
}
