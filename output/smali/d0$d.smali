.class public Ld0$d;
.super Lc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic f:Ld0;


# direct methods
.method public constructor <init>(Ld0;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$d;->f:Ld0;

    .line 2
    invoke-direct {p0, p2}, Lc1;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    .line 1
    new-instance v0, Lz0$a;

    iget-object v1, p0, Ld0$d;->f:Ld0;

    iget-object v1, v1, Ld0;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lz0$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Ld0$d;->f:Ld0;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Ld0;->r:Lv0;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lv0;->c()V

    .line 6
    :cond_0
    new-instance v1, Ld0$c;

    invoke-direct {v1, p1, v0}, Ld0$c;-><init>(Ld0;Lv0$a;)V

    .line 7
    invoke-virtual {p1}, Ld0;->Q()V

    .line 8
    iget-object v2, p1, Ld0;->l:Lu;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Lu;->x(Lv0$a;)Lv0;

    move-result-object v2

    iput-object v2, p1, Ld0;->r:Lv0;

    if-eqz v2, :cond_1

    .line 10
    iget-object v3, p1, Ld0;->k:Lb0;

    if-eqz v3, :cond_1

    .line 11
    invoke-interface {v3, v2}, Lb0;->d(Lv0;)V

    .line 12
    :cond_1
    iget-object v2, p1, Ld0;->r:Lv0;

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 13
    invoke-virtual {p1}, Ld0;->J()V

    .line 14
    iget-object v2, p1, Ld0;->r:Lv0;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lv0;->c()V

    .line 16
    :cond_2
    iget-object v2, p1, Ld0;->k:Lb0;

    if-eqz v2, :cond_3

    iget-boolean v4, p1, Ld0;->P:Z

    if-nez v4, :cond_3

    .line 17
    :try_start_0
    invoke-interface {v2, v1}, Lb0;->i(Lv0$a;)Lv0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 18
    iput-object v2, p1, Ld0;->r:Lv0;

    goto/16 :goto_6

    .line 19
    :cond_4
    iget-object v2, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_9

    .line 20
    iget-boolean v2, p1, Ld0;->G:Z

    if-eqz v2, :cond_6

    .line 21
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 22
    iget-object v6, p1, Ld0;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 23
    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    .line 25
    iget-object v7, p1, Ld0;->h:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 27
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    new-instance v6, Lx0;

    iget-object v8, p1, Ld0;->h:Landroid/content/Context;

    invoke-direct {v6, v8, v5}, Lx0;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {v6}, Lx0;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object v6, p1, Ld0;->h:Landroid/content/Context;

    .line 31
    :goto_1
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    new-instance v7, Landroid/widget/PopupWindow;

    sget v8, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v7, v6, v3, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p1, Ld0;->t:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    .line 33
    invoke-static {v7, v8}, Ld0$h;->h0(Landroid/widget/PopupWindow;I)V

    .line 34
    iget-object v7, p1, Ld0;->t:Landroid/widget/PopupWindow;

    iget-object v8, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v7, p1, Ld0;->t:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 36
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 37
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 38
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 39
    invoke-static {v2, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 40
    iget-object v6, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 41
    iget-object v2, p1, Ld0;->t:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 42
    new-instance v2, Lg0;

    invoke-direct {v2, p1}, Lg0;-><init>(Ld0;)V

    iput-object v2, p1, Ld0;->u:Ljava/lang/Runnable;

    goto :goto_3

    .line 43
    :cond_6
    iget-object v2, p1, Ld0;->y:Landroid/view/ViewGroup;

    sget v6, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_9

    .line 44
    invoke-virtual {p1}, Ld0;->Q()V

    .line 45
    iget-object v6, p1, Ld0;->l:Lu;

    if-eqz v6, :cond_7

    .line 46
    invoke-virtual {v6}, Lu;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, v3

    :goto_2
    if-nez v6, :cond_8

    .line 47
    iget-object v6, p1, Ld0;->h:Landroid/content/Context;

    .line 48
    :cond_8
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 49
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    .line 50
    :cond_9
    :goto_3
    iget-object v2, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_e

    .line 51
    invoke-virtual {p1}, Ld0;->J()V

    .line 52
    iget-object v2, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 53
    new-instance v2, Ly0;

    iget-object v6, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v8, p1, Ld0;->t:Landroid/widget/PopupWindow;

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    invoke-direct {v2, v6, v7, v1, v4}, Ly0;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lv0$a;Z)V

    .line 54
    iget-object v4, v2, Ly0;->l:Lj1;

    .line 55
    invoke-virtual {v1, v2, v4}, Ld0$c;->b(Lv0;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 56
    invoke-virtual {v2}, Ly0;->i()V

    .line 57
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lv0;)V

    .line 58
    iput-object v2, p1, Ld0;->r:Lv0;

    .line 59
    invoke-virtual {p1}, Ld0;->W()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    .line 60
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 61
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v1}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object v1

    invoke-virtual {v1, v2}, Lma;->a(F)Lma;

    iput-object v1, p1, Ld0;->v:Lma;

    .line 62
    new-instance v2, Lh0;

    invoke-direct {v2, p1}, Lh0;-><init>(Ld0;)V

    .line 63
    iget-object v4, v1, Lma;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_c

    .line 64
    invoke-virtual {v1, v4, v2}, Lma;->e(Landroid/view/View;Lna;)V

    goto :goto_5

    .line 65
    :cond_b
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 66
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 68
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_c

    .line 69
    iget-object v1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 70
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 72
    :cond_c
    :goto_5
    iget-object v1, p1, Ld0;->t:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_e

    .line 73
    iget-object v1, p1, Ld0;->i:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Ld0;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 74
    :cond_d
    iput-object v3, p1, Ld0;->r:Lv0;

    .line 75
    :cond_e
    :goto_6
    iget-object v1, p1, Ld0;->r:Lv0;

    if-eqz v1, :cond_f

    iget-object v2, p1, Ld0;->k:Lb0;

    if-eqz v2, :cond_f

    .line 76
    invoke-interface {v2, v1}, Lb0;->d(Lv0;)V

    .line 77
    :cond_f
    iget-object v1, p1, Ld0;->r:Lv0;

    .line 78
    iput-object v1, p1, Ld0;->r:Lv0;

    .line 79
    :cond_10
    iget-object p1, p1, Ld0;->r:Lv0;

    if-eqz p1, :cond_11

    .line 80
    invoke-virtual {v0, p1}, Lz0$a;->e(Lv0;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0$d;->f:Ld0;

    invoke-virtual {v0, p1}, Ld0;->H(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ld0$d;->f:Ld0;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Ld0;->Q()V

    .line 5
    iget-object v4, v0, Ld0;->l:Lu;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v3, p1}, Lu;->j(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Ld0;->K:Ld0$j;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld0;->U(Ld0$j;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p1, v0, Ld0;->K:Ld0$j;

    if-eqz p1, :cond_0

    .line 10
    iput-boolean v2, p1, Ld0$j;->l:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v0, Ld0;->K:Ld0$j;

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ld0;->O(I)Ld0$j;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3, p1}, Ld0;->V(Ld0$j;Landroid/view/KeyEvent;)Z

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld0;->U(Ld0$j;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 15
    iput-boolean v1, v3, Ld0$j;->k:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    instance-of v0, p2, Lj1;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Ld0$d;->f:Ld0;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ld0;->Q()V

    .line 5
    iget-object p1, p2, Ld0;->l:Lu;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lu;->c(Z)V

    :cond_0
    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Ld0$d;->f:Ld0;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p2}, Ld0;->Q()V

    .line 5
    iget-object p1, p2, Ld0;->l:Lu;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lu;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2, p1}, Ld0;->O(I)Ld0$j;

    move-result-object p1

    .line 8
    iget-boolean v1, p1, Ld0$j;->m:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p2, p1, v0}, Ld0;->F(Ld0$j;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lj1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lj1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lj1;->x:Z

    .line 3
    :cond_2
    iget-object v2, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 4
    iput-boolean v1, v0, Lj1;->x:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld0$d;->f:Ld0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0;->O(I)Ld0$j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld0$j;->h:Lj1;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ld0$d;->f:Ld0;

    .line 3
    iget-boolean v0, v0, Ld0;->w:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Ld0$d;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 6
    iget-object v0, p0, Ld0$d;->f:Ld0;

    .line 7
    iget-boolean v0, v0, Ld0;->w:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ld0$d;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lc1;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
