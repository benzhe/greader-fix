.class public final synthetic Ls12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Lp12;

.field public final b:Lmz1;


# direct methods
.method public constructor <init>(Lp12;Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls12;->a:Lp12;

    iput-object p2, p0, Ls12;->b:Lmz1;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Ls12;->a:Lp12;

    iget-object v1, p0, Ls12;->b:Lmz1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v2, v1, Lmz1;->b:Ljava/lang/Object;

    check-cast v2, Lzl2;

    invoke-virtual {v2, p1}, Lzl2;->b(Z)V

    .line 3
    iget-object p1, v0, Lp12;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    sget-object v0, Ly40;->r0:Lo40;

    .line 4
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7
    iget-object p1, v1, Lmz1;->b:Ljava/lang/Object;

    check-cast p1, Lzl2;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object p1, p1, Lzl2;->a:Lig0;

    invoke-interface {p1}, Lig0;->showInterstitial()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    iget-object p1, v1, Lmz1;->b:Ljava/lang/Object;

    check-cast p1, Lzl2;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    iget-object p1, p1, Lzl2;->a:Lig0;

    .line 14
    new-instance v0, Ly20;

    invoke-direct {v0, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-interface {p1, v0}, Lig0;->u5(Lx20;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_4
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Lpl2; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Cannot show interstitial."

    .line 17
    invoke-static {p2}, Lis0;->zzey(Ljava/lang/String;)V

    .line 18
    new-instance p2, Lvh1;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lvh1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
