package com.noinnion.android.reader.ui.dialog;

import android.R;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubePlayerView;
import com.noinnion.android.reader.R$bool;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$integer;
import com.noinnion.android.reader.R$layout;
import com.noinnion.android.reader.R$menu;
import com.noinnion.android.reader.R$string;
import defpackage.ad5;
import defpackage.c50;
import defpackage.dd5;
import defpackage.im7;
import defpackage.n56;
import defpackage.oc5;
import defpackage.xw6;
import defpackage.yw6;
import defpackage.zw6;

/* loaded from: classes2.dex */
public final class YoutubePlayerActivity extends YouTubeBaseActivity {
    public final int i = 1;
    public YouTubePlayerView j;
    public Toolbar k;
    public oc5 l;
    public String m;
    public String n;

    public final void a() {
        if (this.i == 2) {
            YouTubePlayerView youTubePlayerView = this.j;
            if (youTubePlayerView == null) {
                im7.k("youTubePlayerView");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = youTubePlayerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            return;
        }
        if (n56.n1(this)) {
            YouTubePlayerView youTubePlayerView2 = this.j;
            if (youTubePlayerView2 == null) {
                im7.k("youTubePlayerView");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = youTubePlayerView2.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -2;
            return;
        }
        boolean z = getResources().getBoolean(R$bool.isTablet);
        int iW0 = n56.W0(this);
        if (z) {
            iW0 -= n56.o0(this, getResources().getInteger(R$integer.dialog_border_min));
            if (n56.l1(this)) {
                iW0 = Math.min(iW0, n56.o0(this, getResources().getInteger(R$integer.dialog_border_max)));
            }
        }
        YouTubePlayerView youTubePlayerView3 = this.j;
        if (youTubePlayerView3 == null) {
            im7.k("youTubePlayerView");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams3 = youTubePlayerView3.getLayoutParams();
        layoutParams3.width = iW0;
        layoutParams3.height = -2;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        im7.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        a();
    }

    @Override // com.google.android.youtube.player.YouTubeBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String string = getString(R$string.youtube_dev_key);
        im7.d(string, "getString(R.string.youtube_dev_key)");
        this.m = string;
        String stringExtra = getIntent().getStringExtra("youtubeVideoId");
        if (stringExtra == null) {
            finish();
            return;
        }
        this.n = stringExtra;
        setContentView(R$layout.youtube_player_activity);
        View viewFindViewById = findViewById(R$id.toolbar);
        im7.d(viewFindViewById, "findViewById(R.id.toolbar)");
        Toolbar toolbar = (Toolbar) viewFindViewById;
        this.k = toolbar;
        toolbar.n(R$menu.youtube_player);
        Toolbar toolbar2 = this.k;
        if (toolbar2 == null) {
            im7.k("toolbar");
            throw null;
        }
        toolbar2.setNavigationOnClickListener(new xw6(this));
        Toolbar toolbar3 = this.k;
        if (toolbar3 == null) {
            im7.k("toolbar");
            throw null;
        }
        toolbar3.setOnMenuItemClickListener(new yw6(this));
        View viewFindViewById2 = findViewById(R$id.youtube_player_view);
        im7.d(viewFindViewById2, "findViewById(R.id.youtube_player_view)");
        YouTubePlayerView youTubePlayerView = (YouTubePlayerView) viewFindViewById2;
        this.j = youTubePlayerView;
        String str = this.m;
        if (str == null) {
            im7.k("devKey");
            throw null;
        }
        zw6 zw6Var = new zw6(this);
        c50.b(str, "Developer key cannot be null or empty");
        youTubePlayerView.g.b(youTubePlayerView, str, zw6Var);
        a();
    }

    @Override // com.google.android.youtube.player.YouTubeBaseActivity, android.app.Activity
    public void onDestroy() {
        oc5 oc5Var = this.l;
        if (oc5Var != null) {
            ((dd5) oc5Var).a(true);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
        if (z) {
            Toolbar toolbar = this.k;
            if (toolbar == null) {
                im7.k("toolbar");
                throw null;
            }
            toolbar.setVisibility(8);
            oc5 oc5Var = this.l;
            if (oc5Var != null) {
                try {
                    ((dd5) oc5Var).b.y4(true);
                } catch (RemoteException e) {
                    throw new ad5(e);
                }
            }
            oc5 oc5Var2 = this.l;
            if (oc5Var2 != null) {
                try {
                    ((dd5) oc5Var2).b.g4(oc5.d.CHROMELESS.name());
                    return;
                } catch (RemoteException e2) {
                    throw new ad5(e2);
                }
            }
            return;
        }
        Toolbar toolbar2 = this.k;
        if (toolbar2 == null) {
            im7.k("toolbar");
            throw null;
        }
        toolbar2.setVisibility(0);
        oc5 oc5Var3 = this.l;
        if (oc5Var3 != null) {
            try {
                ((dd5) oc5Var3).b.y4(false);
            } catch (RemoteException e3) {
                throw new ad5(e3);
            }
        }
        oc5 oc5Var4 = this.l;
        if (oc5Var4 != null) {
            try {
                ((dd5) oc5Var4).b.g4(oc5.d.DEFAULT.name());
            } catch (RemoteException e4) {
                throw new ad5(e4);
            }
        }
    }
}
