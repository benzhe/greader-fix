.class public final Lmx0;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lxw0;


# static fields
.field public static final synthetic f0:I


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Lrx0;

.field public E:Z

.field public F:Z

.field public G:Lj70;

.field public H:Li70;

.field public I:Lqn3;

.field public J:I

.field public K:I

.field public L:Lm50;

.field public M:Lm50;

.field public N:Lm50;

.field public O:Ll50;

.field public P:I

.field public Q:I

.field public R:I

.field public S:Lcom/google/android/gms/ads/internal/overlay/zze;

.field public T:Z

.field public U:Lcom/google/android/gms/ads/internal/util/zzbz;

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzv0;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Landroid/view/WindowManager;

.field public final e:Lky0;

.field public final e0:Lep3;

.field public final f:Ld23;

.field public final g:Lb60;

.field public final h:Lcom/google/android/gms/internal/ads/zzbar;

.field public final i:Lcom/google/android/gms/ads/internal/zzm;

.field public final j:Lcom/google/android/gms/ads/internal/zzb;

.field public final k:Landroid/util/DisplayMetrics;

.field public final l:F

.field public m:Lsk2;

.field public n:Lwk2;

.field public o:Z

.field public p:Z

.field public q:Lww0;

.field public r:Lcom/google/android/gms/ads/internal/overlay/zze;

.field public s:Lx20;

.field public t:Ljy0;

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lky0;Ljy0;Ljava/lang/String;ZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lo50;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 2
    iput-boolean v4, v1, Lmx0;->o:Z

    .line 3
    iput-boolean v4, v1, Lmx0;->p:Z

    const/4 v5, 0x1

    .line 4
    iput-boolean v5, v1, Lmx0;->B:Z

    const-string v0, ""

    .line 5
    iput-object v0, v1, Lmx0;->C:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, v1, Lmx0;->V:I

    .line 7
    iput v0, v1, Lmx0;->W:I

    .line 8
    iput v0, v1, Lmx0;->a0:I

    .line 9
    iput v0, v1, Lmx0;->b0:I

    .line 10
    iput-object v2, v1, Lmx0;->e:Lky0;

    move-object v6, p2

    .line 11
    iput-object v6, v1, Lmx0;->t:Ljy0;

    move-object v6, p3

    .line 12
    iput-object v6, v1, Lmx0;->u:Ljava/lang/String;

    move v6, p4

    .line 13
    iput-boolean v6, v1, Lmx0;->x:Z

    .line 14
    iput v0, v1, Lmx0;->A:I

    move-object v0, p5

    .line 15
    iput-object v0, v1, Lmx0;->f:Ld23;

    move-object v0, p6

    .line 16
    iput-object v0, v1, Lmx0;->g:Lb60;

    .line 17
    iput-object v3, v1, Lmx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    move-object/from16 v0, p9

    .line 18
    iput-object v0, v1, Lmx0;->i:Lcom/google/android/gms/ads/internal/zzm;

    move-object/from16 v0, p10

    .line 19
    iput-object v0, v1, Lmx0;->j:Lcom/google/android/gms/ads/internal/zzb;

    .line 20
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lmx0;->d0:Landroid/view/WindowManager;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lmx0;->k:Landroid/util/DisplayMetrics;

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lmx0;->l:F

    move-object/from16 v0, p11

    .line 23
    iput-object v0, v1, Lmx0;->e0:Lep3;

    move-object/from16 v0, p12

    .line 24
    iput-object v0, v1, Lmx0;->m:Lsk2;

    move-object/from16 v0, p13

    .line 25
    iput-object v0, v1, Lmx0;->n:Lwk2;

    .line 26
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 28
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 29
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "Unable to enable Javascript."

    .line 30
    invoke-static {v0, v7}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_0
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 32
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 33
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v0, 0x2

    .line 34
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 38
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 39
    invoke-virtual {p0}, Lmx0;->H0()V

    .line 40
    new-instance v0, Lvx0;

    new-instance v3, Lux0;

    invoke-direct {v3, p0}, Lux0;-><init>(Lxw0;)V

    invoke-direct {v0, p0, v3}, Lvx0;-><init>(Lyx0;Lux0;)V

    const-string v3, "googleAdsJsInterface"

    .line 41
    invoke-virtual {p0, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 42
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 43
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v3, v1, Lmx0;->e:Lky0;

    .line 45
    iget-object v3, v3, Lky0;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    .line 46
    invoke-direct {v0, v3, p0, p0, v4}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, v1, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 47
    invoke-virtual {p0}, Lmx0;->K0()V

    .line 48
    new-instance v0, Ll50;

    new-instance v3, Lo50;

    const-string v5, "make_wv"

    iget-object v6, v1, Lmx0;->u:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lo50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ll50;-><init>(Lo50;)V

    iput-object v0, v1, Lmx0;->O:Ll50;

    .line 49
    iget-object v5, v3, Lo50;->d:Ljava/lang/Object;

    monitor-enter v5

    move-object/from16 v6, p8

    .line 50
    :try_start_1
    iput-object v6, v3, Lo50;->e:Lo50;

    .line 51
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sget-object v0, Ly40;->l1:Lo40;

    .line 53
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 54
    invoke-virtual {v3, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lmx0;->n:Lwk2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwk2;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    iget-object v3, v1, Lmx0;->O:Ll50;

    .line 57
    iget-object v3, v3, Ll50;->b:Lo50;

    const-string v5, "gqi"

    .line 58
    invoke-virtual {v3, v5, v0}, Lo50;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, v1, Lmx0;->O:Ll50;

    .line 60
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 61
    invoke-static {v0}, Lc50;->S2(Lo50;)Lm50;

    move-result-object v0

    iput-object v0, v1, Lmx0;->M:Lm50;

    .line 62
    iget-object v3, v1, Lmx0;->O:Ll50;

    const-string v5, "native:view_create"

    .line 63
    iget-object v3, v3, Ll50;->a:Ljava/util/Map;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object v4, v1, Lmx0;->N:Lm50;

    .line 65
    iput-object v4, v1, Lmx0;->L:Lm50;

    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbh(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 68
    iget-object v0, v0, Lor0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :catchall_0
    move-exception v0

    .line 69
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic L0(Lmx0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method


# virtual methods
.method public final A()Lxt0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 2
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 3
    iget-object v1, p0, Lmx0;->M:Lm50;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    iget-object v1, p0, Lmx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 7
    invoke-virtual {p0, v1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final B(ZI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->destroy()V

    .line 2
    iget-object v0, p0, Lmx0;->e0:Lep3;

    new-instance v1, Llx0;

    invoke-direct {v1, p1, p2}, Llx0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lep3;->a(Ldp3;)V

    .line 3
    iget-object p1, p0, Lmx0;->e0:Lep3;

    sget-object p2, Lgp3;->Y:Lgp3;

    invoke-virtual {p1, p2}, Lep3;->b(Lgp3;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final B0(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmx0;->q:Lww0;

    .line 2
    iget-object v2, v1, Lww0;->e:Lxw0;

    invoke-interface {v2}, Lxw0;->E0()Z

    move-result v2

    .line 3
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v4, v1, Lww0;->e:Lxw0;

    invoke-interface {v4}, Lxw0;->c()Ljy0;

    move-result-object v4

    invoke-virtual {v4}, Ljy0;->b()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lww0;->i:Ler3;

    :goto_0
    if-eqz v2, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Lcx0;

    iget-object v3, v1, Lww0;->e:Lxw0;

    iget-object v5, v1, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v2, v3, v5}, Lcx0;-><init>(Lxw0;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v5, v2

    :goto_1
    iget-object v6, v1, Lww0;->m:Lra0;

    iget-object v7, v1, Lww0;->n:Lta0;

    iget-object v8, v1, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v9, v1, Lww0;->e:Lxw0;

    .line 6
    invoke-interface {v9}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v14

    move-object v3, v15

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lra0;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 7
    invoke-virtual {v1, v15}, Lww0;->t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final C()I
    .locals 1

    .line 1
    iget v0, p0, Lmx0;->Q:I

    return v0
.end method

.method public final declared-synchronized C0(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->S:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final E(Lsk2;Lwk2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmx0;->m:Lsk2;

    .line 2
    iput-object p2, p0, Lmx0;->n:Lwk2;

    return-void
.end method

.method public final declared-synchronized E0()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {}, Lby0;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lby0;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 3
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 4
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final F0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lmx0;->z:Ljava/lang/Boolean;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lor0;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iput-object p1, v0, Lor0;->h:Ljava/lang/Boolean;

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzaal()V

    return-void
.end method

.method public final G0()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 2
    invoke-virtual {v0}, Lww0;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 4
    invoke-virtual {v0}, Lww0;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->a:Lzr0;

    .line 6
    iget-object v0, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result v0

    .line 7
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 8
    iget-object v2, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result v2

    .line 9
    iget-object v3, p0, Lmx0;->e:Lky0;

    .line 10
    iget-object v3, v3, Lky0;->a:Landroid/app/Activity;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object v3

    .line 13
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->a:Lzr0;

    .line 14
    iget-object v5, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    aget v6, v3, v1

    invoke-static {v5, v6}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 15
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->a:Lzr0;

    .line 16
    iget-object v6, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    aget v3, v3, v4

    invoke-static {v6, v3}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v0

    move v3, v2

    .line 17
    :goto_1
    iget v6, p0, Lmx0;->W:I

    if-ne v6, v0, :cond_3

    iget v7, p0, Lmx0;->V:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lmx0;->a0:I

    if-ne v7, v5, :cond_3

    iget v7, p0, Lmx0;->b0:I

    if-ne v7, v3, :cond_3

    return v1

    :cond_3
    if-ne v6, v0, :cond_4

    .line 18
    iget v6, p0, Lmx0;->V:I

    if-eq v6, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 19
    :cond_5
    iput v0, p0, Lmx0;->W:I

    .line 20
    iput v2, p0, Lmx0;->V:I

    .line 21
    iput v5, p0, Lmx0;->a0:I

    .line 22
    iput v3, p0, Lmx0;->b0:I

    .line 23
    iget-object v4, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lmx0;->d0:Landroid/view/WindowManager;

    .line 24
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 25
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "width"

    .line 26
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "height"

    .line 27
    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "maxSizeWidth"

    .line 28
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "maxSizeHeight"

    .line 29
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "density"

    float-to-double v3, v4

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rotation"

    .line 31
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onScreenInfoChanged"

    .line 32
    invoke-interface {p0, v2, v0}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Error occurred while obtaining screen information."

    .line 33
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v1
.end method

.method public final declared-synchronized H(Li70;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->H:Li70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmx0;->t:Ljy0;

    invoke-virtual {v0}, Ljy0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lmx0;->I0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 5
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lmx0;->I0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic I()Lhy0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    return-object v0
.end method

.method public final declared-synchronized I0()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    :cond_0
    iput-boolean v1, p0, Lmx0;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J(Ljy0;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->t:Ljy0;

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized J0()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->c0:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv0;

    .line 3
    invoke-virtual {v1}, Lzv0;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmx0;->c0:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K(Lj70;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->G:Lj70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmx0;->O:Ll50;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Ll50;->b:Lo50;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->e()Le50;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->e()Le50;

    move-result-object v1

    .line 5
    iget-object v1, v1, Le50;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final declared-synchronized L()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmx0;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final M()I
    .locals 1

    .line 1
    iget v0, p0, Lmx0;->R:I

    return v0
.end method

.method public final M0(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 3
    invoke-virtual {p0, p1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized N(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lmx0;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized N0(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmx0;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized O()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmx0;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lmx0;->z:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 5
    iget-object v2, v0, Lor0;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v0, v0, Lor0;->h:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    iput-object v0, p0, Lmx0;->z:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_0

    :try_start_4
    const-string v0, "(function(){})()"

    .line 8
    invoke-virtual {p0, v0, v1}, Lmx0;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lmx0;->F0(Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    monitor-exit p0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lmx0;->F0(Ljava/lang/Boolean;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 12
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 14
    :cond_1
    :goto_0
    monitor-enter p0

    .line 15
    :try_start_8
    iget-object v0, p0, Lmx0;->z:Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    monitor-enter p0

    .line 18
    :try_start_9
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p0, p1, v1}, Lmx0;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    goto :goto_1

    :cond_2
    :try_start_a
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 20
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 21
    monitor-exit p0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    const-string v0, "javascript:"

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1}, Lmx0;->N0(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1

    :catchall_4
    move-exception p1

    .line 24
    monitor-exit p0

    throw p1
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmx0;->N:Lm50;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 3
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 4
    invoke-static {v0}, Lc50;->S2(Lo50;)Lm50;

    move-result-object v0

    iput-object v0, p0, Lmx0;->N:Lm50;

    .line 5
    iget-object v1, p0, Lmx0;->O:Ll50;

    .line 6
    iget-object v1, v1, Ll50;->a:Ljava/util/Map;

    const-string v2, "native:view_load"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final declared-synchronized P0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmx0;->T:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lor0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmx0;->n0()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwn()V

    :cond_0
    return-void
.end method

.method public final R(ZJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "success"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 4
    invoke-virtual {p0, p1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized S(Lqn3;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->I:Lqn3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final T()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    return-object v0
.end method

.method public final U()Lm50;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->M:Lm50;

    return-object v0
.end method

.method public final V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    invoke-virtual {v0, p1}, Lww0;->x(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized W(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->x:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lmx0;->x:Z

    .line 3
    invoke-virtual {p0}, Lmx0;->H0()V

    if-eqz v0, :cond_3

    .line 4
    sget-object v0, Ly40;->J:Lo40;

    .line 5
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx0;->t:Ljy0;

    invoke-virtual {v0}, Ljy0;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "expanded"

    goto :goto_1

    :cond_2
    const-string p1, "default"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "onStateChanged"

    .line 9
    invoke-interface {p0, v0, p1}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Error occurred while dispatching state change."

    .line 10
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final X(Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmx0;->q:Lww0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v12, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v1, Lww0;->e:Lxw0;

    .line 4
    invoke-interface {v3}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v4

    move-object v2, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lxw0;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1, v12}, Lww0;->t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final declared-synchronized Y()Lj70;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->G:Lj70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Z(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Ljo;->x(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p2, v0}, Ljo;->x(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "("

    const-string v2, ");"

    invoke-static {v0, p1, v1, p2, v2}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lmx0;->O0(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->e:Lky0;

    .line 2
    iget-object v0, v0, Lky0;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    return-object v0
.end method

.method public final declared-synchronized b0(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljy0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->t:Ljy0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c0(Lfm3;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p1, Lfm3;->j:Z

    iput-boolean p1, p0, Lmx0;->E:Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0, p1}, Lmx0;->M0(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmx0;->O0(Ljava/lang/String;)V

    return-void
.end method

.method public final d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmx0;->O0(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->K0()V

    .line 2
    iget-object v0, p0, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzaam()V

    .line 3
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 5
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 6
    iput-object v1, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 7
    :cond_0
    iput-object v1, p0, Lmx0;->s:Lx20;

    .line 8
    iget-object v0, p0, Lmx0;->q:Lww0;

    invoke-virtual {v0}, Lww0;->d()V

    .line 9
    iget-boolean v0, p0, Lmx0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lwv0;

    invoke-static {p0}, Lwv0;->d(Liu0;)Z

    .line 12
    invoke-virtual {p0}, Lmx0;->J0()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lmx0;->w:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 16
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 19
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    .line 20
    iget-object v3, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    .line 21
    invoke-interface {v1, v0, v2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not call loadUrl. "

    .line 22
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    :goto_1
    monitor-exit p0

    return-void

    .line 25
    :goto_2
    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lwk2;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->n:Lwk2;

    return-object v0
.end method

.method public final declared-synchronized e0(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmx0;->q:Lww0;

    invoke-virtual {v1}, Lww0;->C()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lmx0;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lis0;->zzfb(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()Lrx0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->D:Lrx0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f0()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lmx0;->w:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmx0;->q:Lww0;

    invoke-virtual {v0}, Lww0;->d()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lwv0;

    invoke-static {p0}, Lwv0;->d(Liu0;)Z

    .line 5
    invoke-virtual {p0}, Lmx0;->J0()V

    .line 6
    invoke-virtual {p0}, Lmx0;->P0()V

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    throw v0
.end method

.method public final g()Lsk2;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->m:Lsk2;

    return-object v0
.end method

.method public final g0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 2
    iput-boolean p1, v0, Lww0;->A:Z

    return-void
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;Lzv0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->c0:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmx0;->c0:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lmx0;->c0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmx0;->L:Lm50;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 3
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 4
    iget-object v1, p0, Lmx0;->M:Lm50;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 7
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 8
    invoke-static {v0}, Lc50;->S2(Lo50;)Lm50;

    move-result-object v0

    iput-object v0, p0, Lmx0;->L:Lm50;

    .line 9
    iget-object v1, p0, Lmx0;->O:Ll50;

    .line 10
    iget-object v1, v1, Ll50;->a:Ljava/util/Map;

    const-string v2, "native:view_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    iget-object v1, p0, Lmx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 13
    invoke-virtual {p0, v1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final i()Ll50;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->O:Ll50;

    return-object v0
.end method

.method public final i0()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->e:Lky0;

    .line 2
    iget-object v0, v0, Lky0;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lmx0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final declared-synchronized k(Lrx0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->D:Lrx0;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 2
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iput-object p1, p0, Lmx0;->D:Lrx0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k0(Ljava/lang/String;Lud0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lud0<",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_2

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkb0;

    .line 7
    iget-object v4, p2, Lud0;->a:Lkb0;

    .line 8
    instance-of v5, v3, Lwd0;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lwd0;

    .line 9
    iget-object v5, v5, Lwd0;->a:Lkb0;

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final l()Ld23;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->f:Ld23;

    return-object v0
.end method

.method public final l0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 2
    iput-boolean p1, v0, Lww0;->o:Z

    return-void
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    .line 5
    iget-object v2, v0, Lor0;->e:Landroid/content/Context;

    iget-object v0, v0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v2, v0}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1, v1}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 7
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 9
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->j:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final m0(ZILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmx0;->q:Lww0;

    .line 2
    iget-object v2, v1, Lww0;->e:Lxw0;

    invoke-interface {v2}, Lxw0;->E0()Z

    move-result v2

    .line 3
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v4, v1, Lww0;->e:Lxw0;

    invoke-interface {v4}, Lxw0;->c()Ljy0;

    move-result-object v4

    invoke-virtual {v4}, Ljy0;->b()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lww0;->i:Ler3;

    :goto_0
    if-eqz v2, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Lcx0;

    iget-object v3, v1, Lww0;->e:Lxw0;

    iget-object v5, v1, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v2, v3, v5}, Lcx0;-><init>(Lxw0;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v5, v2

    :goto_1
    iget-object v6, v1, Lww0;->m:Lra0;

    iget-object v7, v1, Lww0;->n:Lta0;

    iget-object v8, v1, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v9, v1, Lww0;->e:Lxw0;

    .line 6
    invoke-interface {v9}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v13

    move-object v3, v14

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lra0;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 7
    invoke-virtual {v1, v14}, Lww0;->t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Lkb0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized n0()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o(Ljava/lang/String;Lkb0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    :cond_0
    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lww0;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onAttachedToWindow()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lmx0;->E:Z

    .line 5
    iget-object v1, p0, Lmx0;->q:Lww0;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lww0;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-boolean v0, p0, Lmx0;->F:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 9
    iget-object v0, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 12
    iget-object v0, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    iput-boolean v2, p0, Lmx0;->F:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    .line 16
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmx0;->G0()Z

    const/4 v0, 0x1

    .line 18
    :cond_2
    invoke-virtual {p0, v0}, Lmx0;->M0(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 19
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onDetachedFromWindow()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 5
    iget-boolean v0, p0, Lmx0;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lmx0;->q:Lww0;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lww0;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 11
    iget-object v0, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 14
    iget-object v0, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    iput-boolean v1, p0, Lmx0;->F:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 17
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    .line 18
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 19
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 20
    invoke-virtual {p0, v1}, Lmx0;->M0(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 21
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 7
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->G0()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lmx0;->n0()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwl()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lmx0;->x:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmx0;->t:Ljy0;

    .line 5
    iget v2, v0, Ljy0;->a:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :cond_4
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_b

    .line 8
    :try_start_2
    sget-object v0, Ly40;->a2:Lo40;

    .line 9
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lmx0;->f()Lrx0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v0}, Lrx0;->getAspectRatio()F

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    cmpl-float v1, v0, v1

    if-nez v1, :cond_8

    .line 16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_8
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_9

    if-eqz v2, :cond_9

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 20
    :cond_a
    :goto_4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 21
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :cond_b
    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_10

    .line 24
    :try_start_5
    sget-object v0, Ly40;->c2:Lo40;

    .line 25
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 26
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "/contentHeight"

    .line 28
    new-instance v1, Lpx0;

    invoke-direct {v1, p0}, Lpx0;-><init>(Lmx0;)V

    .line 29
    iget-object v2, p0, Lmx0;->q:Lww0;

    if-eqz v2, :cond_d

    .line 30
    invoke-virtual {v2, v0, v1}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    :cond_d
    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 31
    invoke-virtual {p0, v0}, Lmx0;->O0(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 34
    iget v1, p0, Lmx0;->K:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_6

    .line 35
    :cond_e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 36
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_f
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 40
    :cond_10
    :try_start_7
    invoke-virtual {v0}, Ljy0;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    iget-object p1, p0, Lmx0;->k:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_11
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    if-eq v0, v6, :cond_13

    if-ne v0, v5, :cond_12

    goto :goto_7

    :cond_12
    const v0, 0x7fffffff

    goto :goto_8

    :cond_13
    :goto_7
    move v0, p1

    :goto_8
    if-eq v2, v6, :cond_14

    if-ne v2, v5, :cond_15

    :cond_14
    move v7, p2

    .line 47
    :cond_15
    iget-object v2, p0, Lmx0;->t:Ljy0;

    iget v5, v2, Ljy0;->c:I

    if-gt v5, v0, :cond_17

    iget v2, v2, Ljy0;->b:I

    if-le v2, v7, :cond_16

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v2, 0x1

    .line 48
    :goto_a
    sget-object v5, Ly40;->c3:Lo40;

    .line 49
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 50
    invoke-virtual {v6, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 52
    iget-object v5, p0, Lmx0;->t:Ljy0;

    iget v6, v5, Ljy0;->c:I

    int-to-float v6, v6

    iget v8, p0, Lmx0;->l:F

    div-float/2addr v6, v8

    int-to-float v0, v0

    div-float/2addr v0, v8

    cmpl-float v0, v6, v0

    if-gtz v0, :cond_18

    iget v0, v5, Ljy0;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    int-to-float v5, v7

    div-float/2addr v5, v8

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-eqz v2, :cond_19

    move v2, v0

    :cond_19
    const/16 v0, 0x8

    if-eqz v2, :cond_1b

    .line 53
    iget-object v2, p0, Lmx0;->t:Ljy0;

    iget v5, v2, Ljy0;->c:I

    int-to-float v5, v5

    iget v6, p0, Lmx0;->l:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v2, v2, Ljy0;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float p1, p1

    div-float/2addr p1, v6

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v6

    float-to-int p2, p2

    const/16 v6, 0x67

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1a

    .line 55
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 56
    :cond_1a
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 57
    iget-boolean p1, p0, Lmx0;->o:Z

    if-nez p1, :cond_1e

    .line 58
    iget-object p1, p0, Lmx0;->e0:Lep3;

    sget-object p2, Lgp3;->W:Lgp3;

    invoke-virtual {p1, p2}, Lep3;->b(Lgp3;)V

    .line 59
    iput-boolean v3, p0, Lmx0;->o:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 60
    :cond_1b
    :try_start_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1c

    .line 61
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 62
    :cond_1c
    iget-boolean p1, p0, Lmx0;->p:Z

    if-nez p1, :cond_1d

    .line 63
    iget-object p1, p0, Lmx0;->e0:Lep3;

    sget-object p2, Lgp3;->X:Lgp3;

    invoke-virtual {p1, p2}, Lep3;->b(Lgp3;)V

    .line 64
    iput-boolean v3, p0, Lmx0;->p:Z

    .line 65
    :cond_1d
    iget-object p1, p0, Lmx0;->t:Ljy0;

    iget p2, p1, Ljy0;->c:I

    iget p1, p1, Ljy0;->b:I

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 66
    :cond_1e
    monitor-exit p0

    return-void

    .line 67
    :cond_1f
    :goto_c
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 3
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 3
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 2
    invoke-virtual {v0}, Lww0;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 4
    iget-object v1, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v0, v0, Lww0;->r:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lmx0;->G:Lj70;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lj70;->b0(Landroid/view/MotionEvent;)V

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 11
    :cond_1
    iget-object v0, p0, Lmx0;->f:Ld23;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Ld23;->b:Lws2;

    invoke-interface {v0, p1}, Lws2;->zza(Landroid/view/MotionEvent;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lmx0;->g:Lb60;

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v3, v0, Lb60;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 17
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lb60;->a:Landroid/view/MotionEvent;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v3, v0, Lb60;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 20
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lb60;->b:Landroid/view/MotionEvent;

    .line 21
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized p(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmx0;->J:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lmx0;->J:I

    if-gtz v0, :cond_1

    .line 2
    iget-object p1, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p0()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmx0;->R:I

    return-void
.end method

.method public final declared-synchronized r(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmx0;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized r0()Lx20;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->s:Lx20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->H:Li70;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lun1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v2, Lxn1;

    invoke-direct {v2, v0}, Lxn1;-><init>(Lun1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmx0;->A:I

    .line 2
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    instance-of v0, p1, Lww0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lww0;

    iput-object p1, p0, Lmx0;->q:Lww0;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 3
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t(ZI)V
    .locals 11

    .line 1
    iget-object v0, p0, Lmx0;->q:Lww0;

    .line 2
    iget-object v1, v0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->E0()Z

    move-result v1

    .line 3
    new-instance v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->c()Ljy0;

    move-result-object v1

    invoke-virtual {v1}, Ljy0;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lww0;->i:Ler3;

    :goto_0
    move-object v3, v1

    iget-object v4, v0, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v5, v0, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v6, v0, Lww0;->e:Lxw0;

    .line 5
    invoke-interface {v6}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v9

    move-object v2, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILcom/google/android/gms/internal/ads/zzbar;)V

    .line 6
    invoke-virtual {v0, v10}, Lww0;->t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final declared-synchronized t0()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->n:Lwk2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lwk2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrg()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzbj(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 6
    invoke-virtual {p0, v1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized u0(Lx20;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lmx0;->s:Lx20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lmx0;->r:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzac(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v0(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx0;->e:Lky0;

    invoke-virtual {v0, p1}, Lky0;->setBaseContext(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lmx0;->U:Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v0, p0, Lmx0;->e:Lky0;

    .line 3
    iget-object v0, v0, Lky0;->a:Landroid/app/Activity;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/app/Activity;)V

    return-void
.end method

.method public final declared-synchronized w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lmx0;->P0()V

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lnx0;

    invoke-direct {v1, p0}, Lnx0;-><init>(Lmx0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w0(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 2
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 3
    iget-object v1, p0, Lmx0;->M:Lm50;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 6
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 7
    iget-object v1, p0, Lmx0;->M:Lm50;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v0, v1, v2}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 9
    iget-object v0, p0, Lmx0;->O:Ll50;

    .line 10
    iget-object v0, v0, Ll50;->b:Lo50;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lo50;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lmx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 15
    invoke-virtual {p0, p1, v0}, Lmx0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lmx0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized x0(Ljava/lang/String;)Lzv0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->c0:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzv0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y0()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->S:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmx0;->Q:I

    return-void
.end method

.method public final declared-synchronized z0()Lqn3;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->I:Lqn3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkr()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->i:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzkr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzks()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmx0;->i:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
