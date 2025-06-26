package com.noinnion.android.greader.ui.subscription;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.SubscriptionSelectionDialog;
import defpackage.ru6;
import defpackage.su6;
import defpackage.tu6;
import defpackage.uu6;
import defpackage.vu6;
import defpackage.wu6;
import defpackage.xu6;
import defpackage.yu6;

/* loaded from: classes2.dex */
public class TagEditDialog_ViewBinding implements Unbinder {
    public TagEditDialog a;
    public View b;
    public View c;
    public View d;
    public View e;
    public View f;
    public View g;
    public View h;
    public View i;

    public class a extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public a(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.NOTIFICATION, tagEditDialog.g, new ru6(tagEditDialog));
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public b(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.IMAGE_FIT, tagEditDialog.g, new su6(tagEditDialog));
        }
    }

    public class c extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public c(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.JAVASCRIPT, tagEditDialog.g, new tu6(tagEditDialog));
        }
    }

    public class d extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public d(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.OFFLINE_FORMAT, tagEditDialog.g, new uu6(tagEditDialog));
        }
    }

    public class e extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public e(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.DISPLAY_LOADING, tagEditDialog.g, new vu6(tagEditDialog));
        }
    }

    public class f extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public f(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.LOAD_LINK, tagEditDialog.g, new wu6(tagEditDialog));
        }
    }

    public class g extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public g(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.READING_MODE, tagEditDialog.g, new xu6(tagEditDialog));
        }
    }

    public class h extends DebouncingOnClickListener {
        public final /* synthetic */ TagEditDialog e;

        public h(TagEditDialog_ViewBinding tagEditDialog_ViewBinding, TagEditDialog tagEditDialog) {
            this.e = tagEditDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            TagEditDialog tagEditDialog = this.e;
            SubscriptionSelectionDialog.d(tagEditDialog.getFragmentManager(), SubscriptionSelectionDialog.f.USER_AGENT, tagEditDialog.g, new yu6(tagEditDialog));
        }
    }

    public TagEditDialog_ViewBinding(TagEditDialog tagEditDialog, View view) {
        this.a = tagEditDialog;
        tagEditDialog.mNameText = (EditText) Utils.findRequiredViewAsType(view, R.id.name, "field 'mNameText'", EditText.class);
        tagEditDialog.mExcludeCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.sync_excluded, "field 'mExcludeCheck'", CheckBox.class);
        tagEditDialog.mHideCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.hide, "field 'mHideCheck'", CheckBox.class);
        tagEditDialog.mNotificationCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.notification, "field 'mNotificationCheck'", CheckBox.class);
        tagEditDialog.mImageFitCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.image_fit, "field 'mImageFitCheck'", CheckBox.class);
        tagEditDialog.mJavascriptCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.javascript, "field 'mJavascriptCheck'", CheckBox.class);
        tagEditDialog.mSubPreferences = Utils.findRequiredView(view, R.id.sub_preferences, "field 'mSubPreferences'");
        tagEditDialog.mTagPreferences = Utils.findRequiredView(view, R.id.tag_preferences, "field 'mTagPreferences'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.notification_container, "method 'changeNotification'");
        this.b = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new a(this, tagEditDialog));
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.image_fit_container, "method 'changeImageFit'");
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, tagEditDialog));
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.javascript_container, "method 'changeJavascript'");
        this.d = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new c(this, tagEditDialog));
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.offline_format_container, "method 'changeOfflineFormat'");
        this.e = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new d(this, tagEditDialog));
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.display_loading_container, "method 'changeDisplayLoading'");
        this.f = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new e(this, tagEditDialog));
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.load_link_container, "method 'changeLoadLink'");
        this.g = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new f(this, tagEditDialog));
        View viewFindRequiredView7 = Utils.findRequiredView(view, R.id.reading_mode_container, "method 'changeReadingMode'");
        this.h = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new g(this, tagEditDialog));
        View viewFindRequiredView8 = Utils.findRequiredView(view, R.id.user_agent_container, "method 'changeUserAgent'");
        this.i = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new h(this, tagEditDialog));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TagEditDialog tagEditDialog = this.a;
        if (tagEditDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        tagEditDialog.mNameText = null;
        tagEditDialog.mExcludeCheck = null;
        tagEditDialog.mHideCheck = null;
        tagEditDialog.mNotificationCheck = null;
        tagEditDialog.mImageFitCheck = null;
        tagEditDialog.mJavascriptCheck = null;
        tagEditDialog.mSubPreferences = null;
        tagEditDialog.mTagPreferences = null;
        this.b.setOnClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
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
    }
}
