package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public class aa {
    public ViewParent a;
    public ViewParent b;
    public final View c;
    public boolean d;
    public int[] e;

    public aa(View view) {
        this.c = view;
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent viewParentG;
        if (!this.d || (viewParentG = g(0)) == null) {
            return false;
        }
        try {
            return viewParentG.onNestedFling(this.c, f, f2, z);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentG + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    public boolean b(float f, float f2) {
        ViewParent viewParentG;
        if (!this.d || (viewParentG = g(0)) == null) {
            return false;
        }
        try {
            return viewParentG.onNestedPreFling(this.c, f, f2);
        } catch (AbstractMethodError e) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentG + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }

    public boolean c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent viewParentG;
        int i4;
        int i5;
        int[] iArr3;
        if (!this.d || (viewParentG = g(i3)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.c.getLocationInWindow(iArr2);
                i4 = iArr2[0];
                i5 = iArr2[1];
            } else {
                i4 = 0;
                i5 = 0;
            }
            if (iArr == null) {
                if (this.e == null) {
                    this.e = new int[2];
                }
                iArr3 = this.e;
            } else {
                iArr3 = iArr;
            }
            iArr3[0] = 0;
            iArr3[1] = 0;
            View view = this.c;
            if (viewParentG instanceof ba) {
                ((ba) viewParentG).m(view, i, i2, iArr3, i3);
            } else if (i3 == 0) {
                try {
                    viewParentG.onNestedPreScroll(view, i, i2, iArr3);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentG + " does not implement interface method onNestedPreScroll", e);
                }
            }
            if (iArr2 != null) {
                this.c.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i4;
                iArr2[1] = iArr2[1] - i5;
            }
            if (iArr3[0] != 0 || iArr3[1] != 0) {
                return true;
            }
        } else if (iArr2 != null) {
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        return false;
    }

    public void d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        f(i, i2, i3, i4, null, i5, iArr2);
    }

    public boolean e(int i, int i2, int i3, int i4, int[] iArr) {
        return f(i, i2, i3, i4, iArr, 0, null);
    }

    public final boolean f(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent viewParentG;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.d || (viewParentG = g(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            int[] iArr4 = this.e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        View view = this.c;
        if (viewParentG instanceof ca) {
            ((ca) viewParentG).h(view, i, i2, i3, i4, i5, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i3;
            iArr3[1] = iArr3[1] + i4;
            if (viewParentG instanceof ba) {
                ((ba) viewParentG).i(view, i, i2, i3, i4, i5);
            } else if (i5 == 0) {
                try {
                    viewParentG.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentG + " does not implement interface method onNestedScroll", e);
                }
            }
        }
        if (iArr != null) {
            this.c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    public final ViewParent g(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i != 1) {
            return null;
        }
        return this.b;
    }

    public boolean h(int i) {
        return g(i) != null;
    }

    public boolean i(int i, int i2) {
        boolean zOnStartNestedScroll;
        if (g(i2) != null) {
            return true;
        }
        if (this.d) {
            View view = this.c;
            for (ViewParent parent = this.c.getParent(); parent != null; parent = parent.getParent()) {
                View view2 = this.c;
                boolean z = parent instanceof ba;
                if (z) {
                    zOnStartNestedScroll = ((ba) parent).j(view, view2, i, i2);
                } else if (i2 == 0) {
                    try {
                        zOnStartNestedScroll = parent.onStartNestedScroll(view, view2, i);
                    } catch (AbstractMethodError e) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e);
                    }
                } else {
                    zOnStartNestedScroll = false;
                }
                if (zOnStartNestedScroll) {
                    if (i2 == 0) {
                        this.a = parent;
                    } else if (i2 == 1) {
                        this.b = parent;
                    }
                    View view3 = this.c;
                    if (z) {
                        ((ba) parent).k(view, view3, i, i2);
                    } else if (i2 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view, view3, i);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e2);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = parent;
                }
            }
        }
        return false;
    }

    public void j(int i) {
        ViewParent viewParentG = g(i);
        if (viewParentG != null) {
            View view = this.c;
            if (viewParentG instanceof ba) {
                ((ba) viewParentG).l(view, i);
            } else if (i == 0) {
                try {
                    viewParentG.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentG + " does not implement interface method onStopNestedScroll", e);
                }
            }
            if (i == 0) {
                this.a = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.b = null;
            }
        }
    }
}
