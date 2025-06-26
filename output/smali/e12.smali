.class public final Le12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz02;


# direct methods
.method public constructor <init>(Lz02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le12;->a:Lz02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le12;->a:Lz02;

    .line 2
    iget-object v0, v0, Lz02;->a:Lg51;

    .line 3
    invoke-virtual {v0}, Lg51;->c()Lh71;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lh71;->l:Lnz1;

    invoke-static {p1, v0}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le12;->a:Lz02;

    .line 6
    iget-object v1, v1, Lz02;->d:Lba1;

    .line 7
    new-instance v2, Lfa1;

    invoke-direct {v2, v0}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v1, v2}, Lxd1;->D0(Lzd1;)V

    .line 8
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lj41;

    .line 2
    invoke-virtual {p1}, Lf61;->b()V

    return-void
.end method
