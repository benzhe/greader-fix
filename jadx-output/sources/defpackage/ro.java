package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.util.SparseIntArray;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.cocosw.bottomsheet.R$attr;
import com.cocosw.bottomsheet.R$layout;
import com.cocosw.bottomsheet.R$style;
import com.cocosw.bottomsheet.R$styleable;
import defpackage.to;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class ro extends Dialog implements DialogInterface {
    public final SparseIntArray e;
    public vo f;
    public String g;
    public Drawable h;
    public Drawable i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public GridView n;
    public to o;
    public c p;
    public ImageView q;
    public int r;
    public boolean s;
    public boolean t;
    public ko u;
    public ko v;
    public ko w;
    public DialogInterface.OnDismissListener x;
    public DialogInterface.OnShowListener y;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ro.this.n.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            View childAt = ro.this.n.getChildAt(r0.getChildCount() - 1);
            if (childAt != null) {
                ro.this.n.setLayoutParams(new LinearLayout.LayoutParams(-1, ro.this.n.getPaddingBottom() + childAt.getPaddingBottom() + childAt.getBottom()));
            }
        }
    }

    public class b implements DialogInterface.OnDismissListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            DialogInterface.OnDismissListener onDismissListener = ro.this.x;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
            ro roVar = ro.this;
            if (roVar.r != Integer.MAX_VALUE) {
                roVar.c();
            }
        }
    }

    public static class c {
        public final Context a;
        public final ko b;
        public int c;
        public CharSequence d;
        public boolean e;
        public DialogInterface.OnClickListener f;

        public c(Activity activity) {
            int i = R$style.BottomSheet_Dialog;
            this.a = activity;
            this.c = i;
            this.b = new ko(activity);
            TypedArray typedArrayObtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{R$attr.bs_bottomSheetStyle});
            try {
                this.c = typedArrayObtainStyledAttributes.getResourceId(0, i);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        public c a(int i) {
            new MenuInflater(this.a).inflate(i, this.b);
            return this;
        }

        public c b(int i, int i2, int i3) {
            Context context = this.a;
            lo loVar = new lo(context, 0, i, 0, 0, context.getText(i3));
            loVar.setIcon(i2);
            ArrayList<lo> arrayList = this.b.c;
            arrayList.add(ko.a(arrayList, ko.d(loVar.c)), loVar);
            return this;
        }

        public c c(int i, CharSequence charSequence) {
            this.b.add(0, i, 0, charSequence);
            return this;
        }

        public ro d() {
            ro roVar = new ro(this.a, this.c);
            roVar.p = this;
            roVar.show();
            return roVar;
        }
    }

    public ro(Context context, int i) {
        super(context, i);
        this.e = new SparseIntArray();
        this.r = -1;
        this.s = true;
        this.t = true;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.BottomSheet, R$attr.bs_bottomSheetStyle, 0);
        try {
            this.i = typedArrayObtainStyledAttributes.getDrawable(R$styleable.BottomSheet_bs_moreDrawable);
            this.h = typedArrayObtainStyledAttributes.getDrawable(R$styleable.BottomSheet_bs_closeDrawable);
            this.g = typedArrayObtainStyledAttributes.getString(R$styleable.BottomSheet_bs_moreText);
            this.m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheet_bs_collapseListIcons, true);
            this.j = typedArrayObtainStyledAttributes.getResourceId(R$styleable.BottomSheet_bs_headerLayout, R$layout.bs_header);
            this.k = typedArrayObtainStyledAttributes.getResourceId(R$styleable.BottomSheet_bs_listItemLayout, R$layout.bs_list_entry);
            this.l = typedArrayObtainStyledAttributes.getResourceId(R$styleable.BottomSheet_bs_gridItemLayout, R$layout.bs_grid_entry);
            typedArrayObtainStyledAttributes.recycle();
            this.f = new vo(this, context);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static void a(ro roVar) {
        Objects.requireNonNull(roVar);
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(300L);
        TransitionManager.beginDelayedTransition(roVar.n, changeBounds);
        roVar.w = roVar.u;
        roVar.d();
        roVar.o.notifyDataSetChanged();
        roVar.n.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        roVar.q.setVisibility(0);
        roVar.q.setImageDrawable(roVar.h);
        roVar.q.setOnClickListener(new qo(roVar));
        roVar.b();
    }

    public final void b() {
        if (this.o.i.size() > 0) {
            this.n.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        }
    }

    public final void c() {
        this.w = this.v;
        d();
        this.o.notifyDataSetChanged();
        b();
        Objects.requireNonNull(this.p);
        this.q.setVisibility(8);
    }

    public final void d() {
        Iterator<lo> it = this.w.c.iterator();
        while (it.hasNext()) {
            if (!it.next().isVisible()) {
                it.remove();
            }
        }
        if (this.p.e || this.w.size() <= 0) {
            return;
        }
        int groupId = this.w.getItem(0).getGroupId();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.w.size(); i++) {
            if (this.w.getItem(i).getGroupId() != groupId) {
                groupId = this.w.getItem(i).getGroupId();
                arrayList.add(new to.b(i, null));
            }
        }
        if (arrayList.size() <= 0) {
            this.o.i.clear();
            return;
        }
        to.b[] bVarArr = new to.b[arrayList.size()];
        arrayList.toArray(bVarArr);
        to toVar = this.o;
        toVar.j = bVarArr;
        toVar.i.clear();
        toVar.a();
        Arrays.sort(toVar.j, new uo(toVar));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            to.b[] bVarArr2 = toVar.j;
            if (i2 >= bVarArr2.length) {
                toVar.notifyDataSetChanged();
                return;
            }
            to.b bVar = bVarArr2[i2];
            for (int i4 = 0; i4 < toVar.n - 1; i4++) {
                int i5 = bVar.a;
                to.b bVar2 = new to.b(i5, bVar.c);
                bVar2.d = 2;
                int i6 = i5 + i3;
                bVar2.b = i6;
                toVar.i.append(i6, bVar2);
                i3++;
            }
            int i7 = bVar.a;
            to.b bVar3 = new to.b(i7, bVar.c);
            bVar3.d = 1;
            int i8 = i7 + i3;
            bVar3.b = i8;
            toVar.i.append(i8, bVar3);
            i3++;
            to.b[] bVarArr3 = toVar.j;
            if (i2 < bVarArr3.length - 1) {
                int i9 = bVarArr3[i2 + 1].a;
                int i10 = i9 - bVar.a;
                int i11 = toVar.n;
                int i12 = i11 - (i10 % i11);
                if (i11 != i12) {
                    for (int i13 = 0; i13 < i12; i13++) {
                        to.b bVar4 = new to.b(bVar.a, bVar.c);
                        bVar4.d = 0;
                        int i14 = i9 + i3;
                        bVar4.b = i14;
                        toVar.i.append(i14, bVar4);
                        i3++;
                    }
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c6  */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ro.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        c();
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        this.s = z;
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.x = onDismissListener;
    }

    @Override // android.app.Dialog
    public void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.y = onShowListener;
    }
}
