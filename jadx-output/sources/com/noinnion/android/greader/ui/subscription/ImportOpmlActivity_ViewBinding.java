package com.noinnion.android.greader.ui.subscription;

import android.os.Environment;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.ImportOpmlActivity.a;
import defpackage.fy6;
import defpackage.ku6;
import defpackage.qb;
import defpackage.wb;
import defpackage.xb;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ImportOpmlActivity_ViewBinding implements Unbinder {
    public ImportOpmlActivity a;
    public View b;
    public View c;
    public View d;

    public class a extends DebouncingOnClickListener {
        public final /* synthetic */ ImportOpmlActivity e;

        public a(ImportOpmlActivity_ViewBinding importOpmlActivity_ViewBinding, ImportOpmlActivity importOpmlActivity) {
            this.e = importOpmlActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.finish();
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ ImportOpmlActivity e;

        public b(ImportOpmlActivity_ViewBinding importOpmlActivity_ViewBinding, ImportOpmlActivity importOpmlActivity) {
            this.e = importOpmlActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ImportOpmlActivity importOpmlActivity = this.e;
            Objects.requireNonNull(importOpmlActivity);
            importOpmlActivity.new a(null).execute(new Void[0]);
        }
    }

    public class c extends DebouncingOnClickListener {
        public final /* synthetic */ ImportOpmlActivity e;

        public c(ImportOpmlActivity_ViewBinding importOpmlActivity_ViewBinding, ImportOpmlActivity importOpmlActivity) {
            this.e = importOpmlActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ImportOpmlActivity importOpmlActivity = this.e;
            Objects.requireNonNull(importOpmlActivity);
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            String[] strArr = {".xml", ".opml"};
            wb wbVarO = importOpmlActivity.o();
            ku6 ku6Var = new ku6(importOpmlActivity);
            int i = fy6.l;
            try {
                fy6 fy6Var = new fy6(absolutePath, true, strArr, ku6Var);
                xb xbVar = (xb) wbVarO;
                Objects.requireNonNull(xbVar);
                qb qbVar = new qb(xbVar);
                qbVar.f(0, fy6Var, "fragment_file_picker", 1);
                qbVar.d();
            } catch (Exception unused) {
            }
        }
    }

    public ImportOpmlActivity_ViewBinding(ImportOpmlActivity importOpmlActivity, View view) {
        this.a = importOpmlActivity;
        importOpmlActivity.vToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'vToolbar'", Toolbar.class);
        importOpmlActivity.vInputText = (EditText) Utils.findRequiredViewAsType(view, R.id.input, "field 'vInputText'", EditText.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.cancel_button, "method 'cancel'");
        this.b = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new a(this, importOpmlActivity));
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.ok_button, "method 'save'");
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, importOpmlActivity));
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.file_picker_button, "method 'filePicker'");
        this.d = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new c(this, importOpmlActivity));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ImportOpmlActivity importOpmlActivity = this.a;
        if (importOpmlActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        importOpmlActivity.vToolbar = null;
        importOpmlActivity.vInputText = null;
        this.b.setOnClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
    }
}
