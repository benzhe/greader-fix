package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.youtube.player.YouTubePlayerView;
import com.google.android.youtube.player.internal.n;
import defpackage.ad5;
import defpackage.c50;
import defpackage.dd5;
import defpackage.oc5;
import defpackage.pc5;
import defpackage.qc5;
import defpackage.rc5;
import defpackage.tc5;

/* loaded from: classes.dex */
public class YouTubeBaseActivity extends Activity {
    public a e;
    public YouTubePlayerView f;
    public int g;
    public Bundle h;

    public final class a implements YouTubePlayerView.b {
        public a(byte b) {
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView) {
            YouTubePlayerView youTubePlayerView2 = YouTubeBaseActivity.this.f;
            if (youTubePlayerView2 != null && youTubePlayerView2 != youTubePlayerView) {
                youTubePlayerView2.o = true;
                dd5 dd5Var = youTubePlayerView2.i;
                if (dd5Var != null) {
                    dd5Var.a(true);
                }
            }
            YouTubeBaseActivity youTubeBaseActivity = YouTubeBaseActivity.this;
            youTubeBaseActivity.f = youTubePlayerView;
            if (youTubeBaseActivity.g > 0) {
                youTubePlayerView.a();
            }
            if (YouTubeBaseActivity.this.g >= 2) {
                youTubePlayerView.e();
            }
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void b(YouTubePlayerView youTubePlayerView, String str, oc5.b bVar) {
            YouTubeBaseActivity youTubeBaseActivity = YouTubeBaseActivity.this;
            Bundle bundle = youTubeBaseActivity.h;
            if (youTubePlayerView.i == null && youTubePlayerView.n == null) {
                c50.a(youTubeBaseActivity, "activity cannot be null");
                c50.a(youTubePlayerView, "provider cannot be null");
                youTubePlayerView.l = youTubePlayerView;
                c50.a(bVar, "listener cannot be null");
                youTubePlayerView.n = bVar;
                youTubePlayerView.m = bundle;
                n nVar = youTubePlayerView.k;
                nVar.e.setVisibility(0);
                nVar.f.setVisibility(8);
                tc5 tc5VarA = rc5.a.a(youTubePlayerView.getContext(), str, new pc5(youTubePlayerView, youTubeBaseActivity), new qc5(youTubePlayerView));
                youTubePlayerView.h = tc5VarA;
                tc5VarA.b();
            }
            YouTubeBaseActivity.this.h = null;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = new a((byte) 0);
        this.h = bundle != null ? bundle.getBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null) {
            boolean zIsFinishing = isFinishing();
            dd5 dd5Var = youTubePlayerView.i;
            if (dd5Var != null) {
                try {
                    dd5Var.b.P6(zIsFinishing);
                    youTubePlayerView.o = true;
                    dd5 dd5Var2 = youTubePlayerView.i;
                    if (dd5Var2 != null) {
                        dd5Var2.a(zIsFinishing);
                    }
                } catch (RemoteException e) {
                    throw new ad5(e);
                }
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        dd5 dd5Var;
        this.g = 1;
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null && (dd5Var = youTubePlayerView.i) != null) {
            try {
                dd5Var.b.R4();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.g = 2;
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null) {
            youTubePlayerView.e();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleZ0;
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null) {
            dd5 dd5Var = youTubePlayerView.i;
            if (dd5Var == null) {
                bundleZ0 = youTubePlayerView.m;
            } else {
                try {
                    bundleZ0 = dd5Var.b.z0();
                } catch (RemoteException e) {
                    throw new ad5(e);
                }
            }
        } else {
            bundleZ0 = this.h;
        }
        bundle.putBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE", bundleZ0);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.g = 1;
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null) {
            youTubePlayerView.a();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        dd5 dd5Var;
        this.g = 0;
        YouTubePlayerView youTubePlayerView = this.f;
        if (youTubePlayerView != null && (dd5Var = youTubePlayerView.i) != null) {
            try {
                dd5Var.b.A5();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
        super.onStop();
    }
}
