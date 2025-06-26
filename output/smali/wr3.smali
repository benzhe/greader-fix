.class public Lwr3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmr3;

.field public final b:Ljr3;

.field public final c:Lm30;

.field public final d:Lz90;

.field public final e:Ltn0;

.field public final f:Lvk0;

.field public final g:Lca0;


# direct methods
.method public constructor <init>(Lmr3;Ljr3;Lm30;Lz90;Ltn0;Lvo0;Lvk0;Lca0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwr3;->a:Lmr3;

    .line 3
    iput-object p2, p0, Lwr3;->b:Ljr3;

    .line 4
    iput-object p3, p0, Lwr3;->c:Lm30;

    .line 5
    iput-object p4, p0, Lwr3;->d:Lz90;

    .line 6
    iput-object p5, p0, Lwr3;->e:Ltn0;

    .line 7
    iput-object p7, p0, Lwr3;->f:Lvk0;

    .line 8
    iput-object p8, p0, Lwr3;->g:Lca0;

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "no_ads_fallback"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flow"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Los3;->j:Los3;

    iget-object v1, p1, Los3;->a:Lzr0;

    .line 5
    iget-object p1, p1, Los3;->g:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lyr0;

    invoke-direct {v1}, Lyr0;-><init>()V

    const-string v2, "gmob-apps"

    invoke-static {p0, p1, v2, v0, v1}, Lzr0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Las0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lx70;
    .locals 1

    .line 1
    new-instance v0, Lls3;

    invoke-direct {v0, p0, p2, p3, p1}, Lls3;-><init>(Lwr3;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lx70;

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lhg0;)Ljk0;
    .locals 1

    .line 1
    new-instance v0, Lcs3;

    invoke-direct {v0, p1, p2}, Lcs3;-><init>(Landroid/content/Context;Lhg0;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljk0;

    return-object p1
.end method

.method public final c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)Lit3;
    .locals 7

    .line 1
    new-instance v6, Lgs3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgs3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v6, p1, p2}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lit3;

    return-object p1
.end method
