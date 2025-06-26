.class public final Lam3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field public static final t:J


# instance fields
.field public final e:Landroid/content/Context;

.field public f:Landroid/app/Application;

.field public final g:Landroid/view/WindowManager;

.field public final h:Landroid/os/PowerManager;

.field public final i:Landroid/app/KeyguardManager;

.field public j:Landroid/content/BroadcastReceiver;

.field public k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljm3;

.field public n:Lcom/google/android/gms/ads/internal/util/zzbp;

.field public o:Z

.field public p:I

.field public final q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lem3;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Landroid/util/DisplayMetrics;

.field public final s:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ly40;->P0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lam3;->t:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbp;

    sget-wide v1, Lam3;->t:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbp;-><init>(J)V

    iput-object v0, p0, Lam3;->n:Lcom/google/android/gms/ads/internal/util/zzbp;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lam3;->o:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lam3;->p:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lam3;->q:Ljava/util/HashSet;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam3;->e:Landroid/content/Context;

    const-string v1, "window"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lam3;->g:Landroid/view/WindowManager;

    const-string v2, "power"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lam3;->h:Landroid/os/PowerManager;

    const-string v2, "keyguard"

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lam3;->i:Landroid/app/KeyguardManager;

    .line 10
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 11
    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iput-object v2, p0, Lam3;->f:Landroid/app/Application;

    .line 12
    new-instance v2, Ljm3;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v2, v0, p0}, Ljm3;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v2, p0, Lam3;->m:Ljm3;

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lam3;->r:Landroid/util/DisplayMetrics;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lam3;->s:Landroid/graphics/Rect;

    .line 15
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 16
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object p1, p0, Lam3;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    invoke-virtual {p0, p1}, Lam3;->h(Landroid/view/View;)V

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lam3;->l:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzr;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p0, p2}, Lam3;->g(Landroid/view/View;)V

    .line 23
    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 2
    invoke-virtual {p0, v1}, Lam3;->e(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p0, v2}, Lam3;->e(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p0, v3}, Lam3;->e(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-virtual {p0, p1}, Lam3;->e(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final b(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lam3;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lam3;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_2

    .line 6
    iput p2, p0, Lam3;->p:I

    :cond_2
    return-void
.end method

.method public final c(Lem3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    return-void
.end method

.method public final d(I)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    iget-object v0, v1, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lam3;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 4
    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 5
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 6
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 7
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v12, v0, [I

    new-array v0, v0, [I

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 9
    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    .line 10
    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    :try_start_0
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v15, "Failure getting view location."

    .line 13
    invoke-static {v15, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_2
    aget v0, v12, v4

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 15
    aget v12, v12, v5

    iput v12, v8, Landroid/graphics/Rect;->top:I

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v0

    iput v12, v8, Landroid/graphics/Rect;->right:I

    .line 17
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v0

    iput v12, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v13

    move/from16 v26, v14

    goto :goto_3

    :cond_4
    const/16 v24, 0x0

    const/16 v26, 0x0

    .line 18
    :goto_3
    sget-object v0, Ly40;->S0:Lo40;

    .line 19
    sget-object v12, Los3;->j:Los3;

    iget-object v12, v12, Los3;->f:Lu40;

    .line 20
    invoke-virtual {v12, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 22
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 24
    :goto_4
    instance-of v13, v12, Landroid/view/View;

    if-eqz v13, :cond_7

    .line 25
    move-object v13, v12

    check-cast v13, Landroid/view/View;

    .line 26
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 27
    invoke-virtual {v13}, Landroid/view/View;->isScrollContainer()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 28
    invoke-virtual {v13, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 29
    invoke-virtual {v1, v14}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v12

    .line 32
    iget-object v13, v12, Lor0;->e:Landroid/content/Context;

    iget-object v12, v12, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v13, v12}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v12

    const-string v13, "PositionWatcher.getParentScrollViewRects"

    .line 33
    invoke-interface {v12, v0, v13}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_7
    :goto_5
    move-object/from16 v30, v0

    const/16 v0, 0x8

    if-eqz v3, :cond_8

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    goto :goto_6

    :cond_8
    const/16 v12, 0x8

    .line 37
    :goto_6
    iget v13, v1, Lam3;->p:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    move v12, v13

    :cond_9
    if-nez v7, :cond_a

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v1, Lam3;->h:Landroid/os/PowerManager;

    iget-object v13, v1, Lam3;->i:Landroid/app/KeyguardManager;

    invoke-static {v3, v7, v13}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v24, :cond_a

    if-eqz v26, :cond_a

    if-nez v12, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-eqz v6, :cond_b

    .line 39
    iget-object v6, v1, Lam3;->n:Lcom/google/android/gms/ads/internal/util/zzbp;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzbp;->tryAcquire()Z

    move-result v6

    if-nez v6, :cond_b

    iget-boolean v6, v1, Lam3;->o:Z

    if-ne v7, v6, :cond_b

    return-void

    :cond_b
    if-nez v7, :cond_c

    .line 40
    iget-boolean v6, v1, Lam3;->o:Z

    if-nez v6, :cond_c

    if-ne v2, v5, :cond_c

    return-void

    .line 41
    :cond_c
    new-instance v2, Lfm3;

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v6

    invoke-interface {v6}, Lb20;->b()J

    move-result-wide v16

    iget-object v6, v1, Lam3;->h:Landroid/os/PowerManager;

    .line 43
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v3, :cond_d

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/ads/internal/util/zzr;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v19, 0x1

    goto :goto_8

    :cond_d
    const/16 v19, 0x0

    :goto_8
    if-eqz v3, :cond_e

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v20, v0

    goto :goto_9

    :cond_e
    const/16 v20, 0x8

    :goto_9
    iget-object v0, v1, Lam3;->s:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v1, v0}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 47
    invoke-virtual {v1, v8}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 48
    invoke-virtual {v1, v9}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    .line 49
    invoke-virtual {v1, v10}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v25

    .line 50
    invoke-virtual {v1, v11}, Lam3;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v27

    iget-object v0, v1, Lam3;->r:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move-object v15, v2

    move/from16 v28, v0

    move/from16 v29, v7

    invoke-direct/range {v15 .. v30}, Lfm3;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V

    .line 51
    iget-object v0, v1, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lem3;

    .line 52
    invoke-interface {v3, v2}, Lem3;->c0(Lfm3;)V

    goto :goto_a

    .line 53
    :cond_f
    iput-boolean v7, v1, Lam3;->o:Z

    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lam3;->r:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Ldm3;

    invoke-direct {v1, p0}, Ldm3;-><init>(Lam3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam3;->k:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcm3;

    invoke-direct {v0, p0}, Lcm3;-><init>(Lam3;)V

    iput-object v0, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlq()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v0

    iget-object v1, p0, Lam3;->e:Landroid/content/Context;

    iget-object v2, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    .line 13
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lam3;->f:Landroid/app/Application;

    if-eqz p1, :cond_2

    .line 15
    :try_start_0
    iget-object v0, p0, Lam3;->m:Ljm3;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 16
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lam3;->k:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    :cond_0
    iput-object v0, p0, Lam3;->k:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    .line 7
    invoke-static {v2, v1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    .line 12
    invoke-static {v1, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_2
    :goto_1
    iget-object p1, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    .line 14
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlq()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object p1

    iget-object v1, p0, Lam3;->e:Landroid/content/Context;

    iget-object v2, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    .line 17
    iget-object v2, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v2, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 18
    invoke-interface {v1, p1, v2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    .line 19
    invoke-static {v1, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_2
    iput-object v0, p0, Lam3;->j:Landroid/content/BroadcastReceiver;

    .line 21
    :cond_3
    iget-object p1, p0, Lam3;->f:Landroid/app/Application;

    if-eqz p1, :cond_4

    .line 22
    :try_start_3
    iget-object v0, p0, Lam3;->m:Ljm3;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 23
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lam3;->b(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 3
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 2
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lam3;->b(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 3
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lam3;->b(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 3
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 2
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lam3;->b(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 3
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    .line 2
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lam3;->d(I)V

    .line 2
    invoke-virtual {p0}, Lam3;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lam3;->d(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lam3;->p:I

    .line 2
    invoke-virtual {p0, p1}, Lam3;->g(Landroid/view/View;)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1}, Lam3;->d(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lam3;->p:I

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lam3;->d(I)V

    .line 3
    invoke-virtual {p0}, Lam3;->f()V

    .line 4
    invoke-virtual {p0, p1}, Lam3;->h(Landroid/view/View;)V

    return-void
.end method
