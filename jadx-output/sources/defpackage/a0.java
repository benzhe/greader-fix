package defpackage;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class a0 extends i0 implements DialogInterface {
    public final AlertController g;

    public a0(Context context, int i) {
        super(context, g(context, i));
        this.g = new AlertController(getContext(), this, getWindow());
    }

    public static int g(Context context, int i) {
        if (((i >>> 24) & Base64.BASELENGTH) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button f(int i) {
        AlertController alertController = this.g;
        Objects.requireNonNull(alertController);
        if (i == -3) {
            return alertController.w;
        }
        if (i == -2) {
            return alertController.s;
        }
        if (i != -1) {
            return null;
        }
        return alertController.o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.i0, android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i;
        View view;
        ListAdapter listAdapter;
        View view2;
        View viewFindViewById;
        super.onCreate(bundle);
        AlertController alertController = this.g;
        alertController.b.setContentView(alertController.K == 0 ? alertController.J : alertController.J);
        View viewFindViewById2 = alertController.c.findViewById(R$id.parentPanel);
        int i2 = R$id.topPanel;
        View viewFindViewById3 = viewFindViewById2.findViewById(i2);
        int i3 = R$id.contentPanel;
        View viewFindViewById4 = viewFindViewById2.findViewById(i3);
        int i4 = R$id.buttonPanel;
        View viewFindViewById5 = viewFindViewById2.findViewById(i4);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R$id.customPanel);
        View viewInflate = alertController.h;
        if (viewInflate == null) {
            viewInflate = alertController.i != 0 ? LayoutInflater.from(alertController.a).inflate(alertController.i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !AlertController.a(viewInflate)) {
            alertController.c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) alertController.c.findViewById(R$id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.n) {
                frameLayout.setPadding(alertController.j, alertController.k, alertController.l, alertController.m);
            }
            if (alertController.g != null) {
                ((LinearLayoutCompat.a) viewGroup.getLayoutParams()).a = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(i2);
        View viewFindViewById7 = viewGroup.findViewById(i3);
        View viewFindViewById8 = viewGroup.findViewById(i4);
        ViewGroup viewGroupD = alertController.d(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupD2 = alertController.d(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupD3 = alertController.d(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) alertController.c.findViewById(R$id.scrollView);
        alertController.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupD2.findViewById(R.id.message);
        alertController.F = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.A.removeView(alertController.F);
                if (alertController.g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.A.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(alertController.A);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(alertController.g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupD2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupD3.findViewById(R.id.button1);
        alertController.o = button;
        button.setOnClickListener(alertController.R);
        if (TextUtils.isEmpty(alertController.p) && alertController.r == null) {
            alertController.o.setVisibility(8);
            i = 0;
        } else {
            alertController.o.setText(alertController.p);
            Drawable drawable = alertController.r;
            if (drawable != null) {
                int i5 = alertController.d;
                drawable.setBounds(0, 0, i5, i5);
                alertController.o.setCompoundDrawables(alertController.r, null, null, null);
            }
            alertController.o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) viewGroupD3.findViewById(R.id.button2);
        alertController.s = button2;
        button2.setOnClickListener(alertController.R);
        if (TextUtils.isEmpty(alertController.t) && alertController.v == null) {
            alertController.s.setVisibility(8);
        } else {
            alertController.s.setText(alertController.t);
            Drawable drawable2 = alertController.v;
            if (drawable2 != null) {
                int i6 = alertController.d;
                drawable2.setBounds(0, 0, i6, i6);
                alertController.s.setCompoundDrawables(alertController.v, null, null, null);
            }
            alertController.s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) viewGroupD3.findViewById(R.id.button3);
        alertController.w = button3;
        button3.setOnClickListener(alertController.R);
        if (TextUtils.isEmpty(alertController.x) && alertController.z == null) {
            alertController.w.setVisibility(8);
            view = null;
        } else {
            alertController.w.setText(alertController.x);
            Drawable drawable3 = alertController.z;
            if (drawable3 != null) {
                int i7 = alertController.d;
                drawable3.setBounds(0, 0, i7, i7);
                view = null;
                alertController.w.setCompoundDrawables(alertController.z, null, null, null);
            } else {
                view = null;
            }
            alertController.w.setVisibility(0);
            i |= 4;
        }
        Context context = alertController.a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                alertController.b(alertController.o);
            } else if (i == 2) {
                alertController.b(alertController.s);
            } else if (i == 4) {
                alertController.b(alertController.w);
            }
        }
        if (!(i != 0)) {
            viewGroupD3.setVisibility(8);
        }
        if (alertController.G != null) {
            viewGroupD.addView(alertController.G, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.c.findViewById(R$id.title_template).setVisibility(8);
        } else {
            alertController.D = (ImageView) alertController.c.findViewById(R.id.icon);
            if ((!TextUtils.isEmpty(alertController.e)) && alertController.P) {
                TextView textView2 = (TextView) alertController.c.findViewById(R$id.alertTitle);
                alertController.E = textView2;
                textView2.setText(alertController.e);
                int i8 = alertController.B;
                if (i8 != 0) {
                    alertController.D.setImageResource(i8);
                } else {
                    Drawable drawable4 = alertController.C;
                    if (drawable4 != null) {
                        alertController.D.setImageDrawable(drawable4);
                    } else {
                        alertController.E.setPadding(alertController.D.getPaddingLeft(), alertController.D.getPaddingTop(), alertController.D.getPaddingRight(), alertController.D.getPaddingBottom());
                        alertController.D.setVisibility(8);
                    }
                }
            } else {
                alertController.c.findViewById(R$id.title_template).setVisibility(8);
                alertController.D.setVisibility(8);
                viewGroupD.setVisibility(8);
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        boolean z3 = (viewGroupD == null || viewGroupD.getVisibility() == 8) ? 0 : 1;
        boolean z4 = viewGroupD3.getVisibility() != 8;
        if (!z4 && (viewFindViewById = viewGroupD2.findViewById(R$id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (z3 != 0) {
            NestedScrollView nestedScrollView2 = alertController.A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (alertController.f == null && alertController.g == null) ? view : viewGroupD.findViewById(R$id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupD2.findViewById(R$id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        ListView listView = alertController.g;
        if (listView instanceof AlertController.RecycleListView) {
            ((AlertController.RecycleListView) listView).setHasDecor(z3, z4);
        }
        if (!z2) {
            View view3 = alertController.g;
            if (view3 == null) {
                view3 = alertController.A;
            }
            if (view3 != null) {
                int i9 = z3 | (z4 ? 2 : 0);
                View viewFindViewById11 = alertController.c.findViewById(R$id.scrollIndicatorUp);
                View viewFindViewById12 = alertController.c.findViewById(R$id.scrollIndicatorDown);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23) {
                    AtomicInteger atomicInteger = ha.a;
                    if (i10 >= 23) {
                        view3.setScrollIndicators(i9, 3);
                    }
                    if (viewFindViewById11 != null) {
                        viewGroupD2.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroupD2.removeView(viewFindViewById12);
                    }
                } else {
                    if (viewFindViewById11 != null && (i9 & 1) == 0) {
                        viewGroupD2.removeView(viewFindViewById11);
                        viewFindViewById11 = view;
                    }
                    if (viewFindViewById12 == null || (i9 & 2) != 0) {
                        view2 = viewFindViewById12;
                    } else {
                        viewGroupD2.removeView(viewFindViewById12);
                        view2 = view;
                    }
                    if (viewFindViewById11 != null || view2 != null) {
                        if (alertController.f != null) {
                            alertController.A.setOnScrollChangeListener(new v(alertController, viewFindViewById11, view2));
                            alertController.A.post(new w(alertController, viewFindViewById11, view2));
                        } else {
                            ListView listView2 = alertController.g;
                            if (listView2 != null) {
                                listView2.setOnScrollListener(new x(alertController, viewFindViewById11, view2));
                                alertController.g.post(new y(alertController, viewFindViewById11, view2));
                            } else {
                                if (viewFindViewById11 != null) {
                                    viewGroupD2.removeView(viewFindViewById11);
                                }
                                if (view2 != null) {
                                    viewGroupD2.removeView(view2);
                                }
                            }
                        }
                    }
                }
            }
        }
        ListView listView3 = alertController.g;
        if (listView3 == null || (listAdapter = alertController.H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i11 = alertController.I;
        if (i11 > -1) {
            listView3.setItemChecked(i11, true);
            listView3.setSelection(i11);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.g.A;
        if (nestedScrollView != null && nestedScrollView.o(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.g.A;
        if (nestedScrollView != null && nestedScrollView.o(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // defpackage.i0, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.g;
        alertController.e = charSequence;
        TextView textView = alertController.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public static class a {
        public final AlertController.b a;
        public final int b;

        public a(Context context) {
            int iG = a0.g(context, 0);
            this.a = new AlertController.b(new ContextThemeWrapper(context, a0.g(context, iG)));
            this.b = iG;
        }

        public a0 a() {
            a0 a0Var = new a0(this.a.a, this.b);
            AlertController.b bVar = this.a;
            AlertController alertController = a0Var.g;
            View view = bVar.f;
            if (view != null) {
                alertController.G = view;
            } else {
                CharSequence charSequence = bVar.e;
                if (charSequence != null) {
                    alertController.e = charSequence;
                    TextView textView = alertController.E;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = bVar.d;
                if (drawable != null) {
                    alertController.C = drawable;
                    alertController.B = 0;
                    ImageView imageView = alertController.D;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.D.setImageDrawable(drawable);
                    }
                }
                int i = bVar.c;
                if (i != 0) {
                    alertController.f(i);
                }
            }
            CharSequence charSequence2 = bVar.g;
            if (charSequence2 != null) {
                alertController.f = charSequence2;
                TextView textView2 = alertController.F;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = bVar.h;
            if (charSequence3 != null) {
                alertController.e(-1, charSequence3, bVar.i, null, null);
            }
            CharSequence charSequence4 = bVar.j;
            if (charSequence4 != null) {
                alertController.e(-2, charSequence4, bVar.k, null, null);
            }
            CharSequence charSequence5 = bVar.l;
            if (charSequence5 != null) {
                alertController.e(-3, charSequence5, bVar.m, null, null);
            }
            if (bVar.p != null || bVar.q != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) bVar.b.inflate(alertController.L, (ViewGroup) null);
                int i2 = bVar.u ? alertController.N : alertController.O;
                ListAdapter dVar = bVar.q;
                if (dVar == null) {
                    dVar = new AlertController.d(bVar.a, i2, R.id.text1, bVar.p);
                }
                alertController.H = dVar;
                alertController.I = bVar.v;
                if (bVar.r != null) {
                    recycleListView.setOnItemClickListener(new z(bVar, alertController));
                }
                if (bVar.u) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.g = recycleListView;
            }
            View view2 = bVar.t;
            if (view2 != null) {
                alertController.h = view2;
                alertController.i = 0;
                alertController.n = false;
            } else {
                int i3 = bVar.s;
                if (i3 != 0) {
                    alertController.h = null;
                    alertController.i = i3;
                    alertController.n = false;
                }
            }
            a0Var.setCancelable(this.a.n);
            if (this.a.n) {
                a0Var.setCanceledOnTouchOutside(true);
            }
            Objects.requireNonNull(this.a);
            a0Var.setOnCancelListener(null);
            Objects.requireNonNull(this.a);
            a0Var.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = this.a.o;
            if (onKeyListener != null) {
                a0Var.setOnKeyListener(onKeyListener);
            }
            return a0Var;
        }

        public a b(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.j = bVar.a.getText(i);
            this.a.k = onClickListener;
            return this;
        }

        public a c(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.l = bVar.a.getText(i);
            this.a.m = onClickListener;
            return this;
        }

        public a d(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.h = bVar.a.getText(i);
            this.a.i = onClickListener;
            return this;
        }

        public a0 e() {
            a0 a0VarA = a();
            a0VarA.show();
            return a0VarA;
        }

        public a(Context context, int i) {
            this.a = new AlertController.b(new ContextThemeWrapper(context, a0.g(context, i)));
            this.b = i;
        }
    }
}
