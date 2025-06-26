.class public final Lcom/google/android/gms/ads/internal/util/zzbe;
.super Lj40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj40<",
        "Lpu3;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "Lpu3;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lds0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lxs0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxs0<",
            "Lpu3;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lnw;

    invoke-direct {v0, p2}, Lnw;-><init>(Lxs0;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lj40;-><init>(ILjava/lang/String;Lcc0;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->r:Lxs0;

    .line 3
    new-instance p2, Lds0;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, v0}, Lds0;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->s:Lds0;

    .line 6
    invoke-static {}, Lds0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcs0;

    const-string v2, "GET"

    invoke-direct {v1, p1, v2, v0, v0}, Lcs0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    const-string p1, "onNetworkRequest"

    invoke-virtual {p2, p1, v1}, Lds0;->c(Ljava/lang/String;Lgs0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final i(Lpu3;)Lc90;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpu3;",
            ")",
            "Lc90<",
            "Lpu3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc50;->U2(Lpu3;)Lui3;

    move-result-object v0

    .line 2
    new-instance v1, Lc90;

    invoke-direct {v1, p1, v0}, Lc90;-><init>(Ljava/lang/Object;Lui3;)V

    return-object v1
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lpu3;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->s:Lds0;

    iget-object v1, p1, Lpu3;->c:Ljava/util/Map;

    iget v2, p1, Lpu3;->a:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lds0;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lfs0;

    invoke-direct {v3, v2, v1}, Lfs0;-><init>(ILjava/util/Map;)V

    const-string v1, "onNetworkResponse"

    invoke-virtual {v0, v1, v3}, Lds0;->c(Ljava/lang/String;Lgs0;)V

    const/16 v1, 0xc8

    if-lt v2, v1, :cond_1

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 6
    new-instance v2, Lhs0;

    invoke-direct {v2, v1}, Lhs0;-><init>(Ljava/lang/String;)V

    const-string v1, "onNetworkRequestError"

    invoke-virtual {v0, v1, v2}, Lds0;->c(Ljava/lang/String;Lgs0;)V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->s:Lds0;

    iget-object v1, p1, Lpu3;->b:[B

    .line 8
    invoke-static {}, Lds0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 9
    new-instance v2, Les0;

    invoke-direct {v2, v1}, Les0;-><init>([B)V

    const-string v1, "onNetworkResponseBody"

    invoke-virtual {v0, v1, v2}, Lds0;->c(Ljava/lang/String;Lgs0;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->r:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
