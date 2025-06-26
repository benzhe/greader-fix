.class public final Lhe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Lwe0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lse0;

.field public final synthetic b:Lpd0;

.field public final synthetic c:Lyd0;


# direct methods
.method public constructor <init>(Lyd0;Lse0;Lpd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhe0;->c:Lyd0;

    iput-object p2, p0, Lhe0;->a:Lse0;

    iput-object p3, p0, Lhe0;->b:Lpd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lwe0;

    .line 2
    iget-object p1, p0, Lhe0;->c:Lyd0;

    .line 3
    iget-object p1, p1, Lyd0;->a:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object p2, p0, Lhe0;->a:Lse0;

    invoke-virtual {p2}, Lat0;->a()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lhe0;->a:Lse0;

    .line 6
    invoke-virtual {p2}, Lat0;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lhe0;->c:Lyd0;

    const/4 v0, 0x0

    .line 8
    iput v0, p2, Lyd0;->h:I

    .line 9
    iget-object p2, p2, Lyd0;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 10
    iget-object v0, p0, Lhe0;->b:Lpd0;

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lhe0;->a:Lse0;

    iget-object v0, p0, Lhe0;->b:Lpd0;

    .line 12
    iget-object p2, p2, Lat0;->a:Lxs0;

    invoke-virtual {p2, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Lhe0;->c:Lyd0;

    iget-object v0, p0, Lhe0;->a:Lse0;

    .line 14
    iput-object v0, p2, Lyd0;->g:Lse0;

    const-string p2, "Successfully loaded JS Engine."

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 16
    monitor-exit p1

    return-void

    .line 17
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
