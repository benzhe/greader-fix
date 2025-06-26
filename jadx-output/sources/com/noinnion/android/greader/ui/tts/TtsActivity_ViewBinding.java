package com.noinnion.android.greader.ui.tts;

import android.os.RemoteException;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import defpackage.iv6;
import defpackage.jv6;
import defpackage.op6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class TtsActivity_ViewBinding implements Unbinder {
    public TtsActivity a;
    public View b;
    public View c;
    public View d;
    public View e;
    public View f;
    public View g;
    public View h;
    public View i;
    public View j;
    public View k;
    public View l;

    public class a extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public a(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.stop();
                }
                ttsActivity.finish();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public b(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.finish();
        }
    }

    public class c extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public c(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.premiumUpgrade(view);
        }
    }

    public class d implements AdapterView.OnItemClickListener {
        public final /* synthetic */ TtsActivity e;

        public d(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                ttsActivity.C(true);
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.N1(i);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class e extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public e(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                ttsActivity.C((op6Var == null || op6Var.X1()) ? false : true);
                op6 op6Var2 = ttsActivity.G;
                if (op6Var2 != null) {
                    op6Var2.J();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class f extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public f(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.showLanguageList(view);
        }
    }

    public class g extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public g(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            long jC3 = 0;
            try {
                op6 op6Var = ttsActivity.G;
                listI3 = op6Var != null ? op6Var.i3() : null;
                op6 op6Var2 = ttsActivity.G;
                if (op6Var2 != null) {
                    jC3 = op6Var2.c3();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            long j = jC3;
            List<String> list = listI3;
            if (list == null || list.isEmpty()) {
                return;
            }
            new jv6(ttsActivity, list, j, new iv6(ttsActivity)).show();
        }
    }

    public class h extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public h(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.K3();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class i extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public i(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.F2();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class j extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public j(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.J2();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public class k extends DebouncingOnClickListener {
        public final /* synthetic */ TtsActivity e;

        public k(TtsActivity_ViewBinding ttsActivity_ViewBinding, TtsActivity ttsActivity) {
            this.e = ttsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TtsActivity ttsActivity = this.e;
            Objects.requireNonNull(ttsActivity);
            try {
                op6 op6Var = ttsActivity.G;
                if (op6Var != null) {
                    op6Var.f2();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public TtsActivity_ViewBinding(TtsActivity ttsActivity, View view) {
        this.a = ttsActivity;
        ttsActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.premium_upgrade, "field 'mPremiumUpgrade' and method 'premiumUpgrade'");
        ttsActivity.mPremiumUpgrade = viewFindRequiredView;
        this.b = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new c(this, ttsActivity));
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.list_view, "field 'mListView' and method 'onItemClick'");
        ttsActivity.mListView = (ListView) Utils.castView(viewFindRequiredView2, R.id.list_view, "field 'mListView'", ListView.class);
        this.c = viewFindRequiredView2;
        ((AdapterView) viewFindRequiredView2).setOnItemClickListener(new d(this, ttsActivity));
        ttsActivity.mEmptyView = Utils.findRequiredView(view, R.id.empty, "field 'mEmptyView'");
        ttsActivity.mTitleText = (TextView) Utils.findRequiredViewAsType(view, R.id.item_label, "field 'mTitleText'", TextView.class);
        ttsActivity.mLanguageText = (TextView) Utils.findRequiredViewAsType(view, R.id.language_text, "field 'mLanguageText'", TextView.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.play_button, "field 'mPlayButton' and method 'playClick'");
        ttsActivity.mPlayButton = (ImageView) Utils.castView(viewFindRequiredView3, R.id.play_button, "field 'mPlayButton'", ImageView.class);
        this.d = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new e(this, ttsActivity));
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.language_selector, "method 'showLanguageList'");
        this.e = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new f(this, ttsActivity));
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.playlist, "method 'showPlayListDialog'");
        this.f = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new g(this, ttsActivity));
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.rewind_button, "method 'rewindClick'");
        this.g = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new h(this, ttsActivity));
        View viewFindRequiredView7 = Utils.findRequiredView(view, R.id.forward_button, "method 'forwardClick'");
        this.h = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new i(this, ttsActivity));
        View viewFindRequiredView8 = Utils.findRequiredView(view, R.id.prev_button, "method 'previousClick'");
        this.i = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new j(this, ttsActivity));
        View viewFindRequiredView9 = Utils.findRequiredView(view, R.id.next_button, "method 'nextClick'");
        this.j = viewFindRequiredView9;
        viewFindRequiredView9.setOnClickListener(new k(this, ttsActivity));
        View viewFindRequiredView10 = Utils.findRequiredView(view, R.id.stop_button, "method 'stopClick'");
        this.k = viewFindRequiredView10;
        viewFindRequiredView10.setOnClickListener(new a(this, ttsActivity));
        View viewFindRequiredView11 = Utils.findRequiredView(view, R.id.cancel_button, "method 'cancelClick'");
        this.l = viewFindRequiredView11;
        viewFindRequiredView11.setOnClickListener(new b(this, ttsActivity));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TtsActivity ttsActivity = this.a;
        if (ttsActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        ttsActivity.mToolbar = null;
        ttsActivity.mPremiumUpgrade = null;
        ttsActivity.mListView = null;
        ttsActivity.mEmptyView = null;
        ttsActivity.mTitleText = null;
        ttsActivity.mLanguageText = null;
        ttsActivity.mPlayButton = null;
        this.b.setOnClickListener(null);
        this.b = null;
        ((AdapterView) this.c).setOnItemClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
        this.e.setOnClickListener(null);
        this.e = null;
        this.f.setOnClickListener(null);
        this.f = null;
        this.g.setOnClickListener(null);
        this.g = null;
        this.h.setOnClickListener(null);
        this.h = null;
        this.i.setOnClickListener(null);
        this.i = null;
        this.j.setOnClickListener(null);
        this.j = null;
        this.k.setOnClickListener(null);
        this.k = null;
        this.l.setOnClickListener(null);
        this.l = null;
    }
}
