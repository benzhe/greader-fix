package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import defpackage.ha;
import defpackage.p0;
import defpackage.p2;
import defpackage.s1;
import defpackage.w9;
import defpackage.y1;
import java.util.Objects;

/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {
    public final f e;
    public final g f;
    public final View g;
    public final Drawable h;
    public final FrameLayout i;
    public final ImageView j;
    public final FrameLayout k;
    public final ImageView l;
    public final int m;
    public w9 n;
    public final DataSetObserver o;
    public final ViewTreeObserver.OnGlobalLayoutListener p;
    public ListPopupWindow q;
    public PopupWindow.OnDismissListener r;
    public int s;
    public boolean t;
    public int u;

    public static class InnerLayout extends LinearLayout {
        public static final int[] e = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            int resourceId;
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : p0.b(context, resourceId));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.e.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.e.notifyDataSetInvalidated();
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.b()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                w9 w9Var = ActivityChooserView.this.n;
                if (w9Var != null) {
                    w9Var.i(true);
                }
            }
        }
    }

    public class c extends View.AccessibilityDelegate {
        public c(ActivityChooserView activityChooserView) {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }
    }

    public class d extends p2 {
        public d(View view) {
            super(view);
        }

        @Override // defpackage.p2
        public s1 b() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // defpackage.p2
        public boolean c() {
            ActivityChooserView.this.c();
            return true;
        }

        @Override // defpackage.p2
        public boolean d() {
            ActivityChooserView.this.a();
            return true;
        }
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            Objects.requireNonNull(ActivityChooserView.this.e);
            throw null;
        }
    }

    public class f extends BaseAdapter {
        public int e = 4;
        public boolean f;
        public boolean g;

        public f() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            throw null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.g || !this.f) {
                throw null;
            }
            throw null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            if (this.g) {
                throw null;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.g) {
                throw null;
            }
            if (view == null || view.getId() != R$id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            ActivityChooserView.this.getContext().getPackageManager();
            getItem(i);
            throw null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.k) {
                activityChooserView.a();
                Objects.requireNonNull(ActivityChooserView.this.e);
                throw null;
            }
            if (view != activityChooserView.i) {
                throw new IllegalArgumentException();
            }
            activityChooserView.d(activityChooserView.s);
            throw null;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.r;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
            w9 w9Var = ActivityChooserView.this.n;
            if (w9Var != null) {
                w9Var.i(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (((f) adapterView.getAdapter()).g) {
                throw null;
            }
            ActivityChooserView.this.a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            Objects.requireNonNull(activityChooserView);
            boolean z = activityChooserView.e.f;
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.k) {
                throw new IllegalArgumentException();
            }
            Objects.requireNonNull(activityChooserView.e);
            throw null;
        }
    }

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public boolean a() {
        if (!b()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.p);
        return true;
    }

    public boolean b() {
        return getListPopupWindow().a();
    }

    public boolean c() {
        if (b() || !this.t) {
            return false;
        }
        d(this.s);
        throw null;
    }

    public void d(int i) {
        Objects.requireNonNull(this.e);
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    public y1 getDataModel() {
        Objects.requireNonNull(this.e);
        return null;
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.q == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, R$attr.listPopupWindowStyle);
            this.q = listPopupWindow;
            listPopupWindow.o(this.e);
            ListPopupWindow listPopupWindow2 = this.q;
            listPopupWindow2.t = this;
            listPopupWindow2.r(true);
            ListPopupWindow listPopupWindow3 = this.q;
            g gVar = this.f;
            listPopupWindow3.u = gVar;
            listPopupWindow3.D.setOnDismissListener(gVar);
        }
        return this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Objects.requireNonNull(this.e);
        this.t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Objects.requireNonNull(this.e);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.p);
        }
        if (b()) {
            a();
        }
        this.t = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.g.layout(0, 0, i3 - i, i4 - i2);
        if (b()) {
            return;
        }
        a();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.g;
        if (this.k.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(y1 y1Var) {
        f fVar = this.e;
        Objects.requireNonNull(ActivityChooserView.this.e);
        if (y1Var != null && ActivityChooserView.this.isShown()) {
            DataSetObserver dataSetObserver = ActivityChooserView.this.o;
            throw null;
        }
        fVar.notifyDataSetChanged();
        if (b()) {
            a();
            c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.u = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.j.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.j.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.s = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.r = onDismissListener;
    }

    public void setProvider(w9 w9Var) {
        this.n = w9Var;
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new a();
        this.p = new b();
        this.s = 4;
        int[] iArr = R$styleable.ActivityChooserView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ha.r(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        this.s = typedArrayObtainStyledAttributes.getInt(R$styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R$layout.abc_activity_chooser_view, (ViewGroup) this, true);
        g gVar = new g();
        this.f = gVar;
        View viewFindViewById = findViewById(R$id.activity_chooser_view_content);
        this.g = viewFindViewById;
        this.h = viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.default_activity_button);
        this.k = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        int i2 = R$id.image;
        this.l = (ImageView) frameLayout.findViewById(i2);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c(this));
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.i = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i2);
        this.j = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.e = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.m = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
    }
}
