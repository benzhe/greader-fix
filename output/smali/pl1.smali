.class public final Lpl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmp1;

.field public final b:Lio1;

.field public c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lmp1;Lio1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpl1;->a:Lmp1;

    .line 3
    iput-object p2, p0, Lpl1;->b:Lio1;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lpl1;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->a:Lzr0;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, p2}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lix0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpl1;->a:Lmp1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->C()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "policy_validator"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Lol1;

    invoke-direct {v1, p0}, Lol1;-><init>(Lpl1;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 6
    new-instance v1, Lrl1;

    invoke-direct {v1, p0, p2, p1}, Lrl1;-><init>(Lpl1;Landroid/view/WindowManager;Landroid/view/View;)V

    const-string v2, "/hideValidatorOverlay"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 7
    new-instance v1, Lrb0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lrb0;-><init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lsy1;Lns1;Lpp2;)V

    const-string v2, "/open"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 8
    iget-object v1, p0, Lpl1;->b:Lio1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lql1;

    invoke-direct {v3, p0, p1, p2}, Lql1;-><init>(Lpl1;Landroid/view/View;Landroid/view/WindowManager;)V

    const-string p1, "/loadNativeAdPolicyViolations"

    invoke-virtual {v1, v2, p1, v3}, Lio1;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;)V

    .line 9
    iget-object p1, p0, Lpl1;->b:Lio1;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ltl1;->a:Lkb0;

    const-string v2, "/showValidatorOverlay"

    invoke-virtual {p1, p2, v2, v1}, Lio1;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;)V

    .line 10
    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
