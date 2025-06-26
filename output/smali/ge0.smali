.class public final Lge0;
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
.field public final synthetic a:Ld23;

.field public final synthetic b:Lpd0;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/util/zzbs;

.field public final synthetic d:Lyd0;


# direct methods
.method public constructor <init>(Lyd0;Ld23;Lpd0;Lcom/google/android/gms/ads/internal/util/zzbs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lge0;->d:Lyd0;

    iput-object p2, p0, Lge0;->a:Ld23;

    iput-object p3, p0, Lge0;->b:Lpd0;

    iput-object p4, p0, Lge0;->c:Lcom/google/android/gms/ads/internal/util/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lwe0;

    .line 2
    iget-object p1, p0, Lge0;->d:Lyd0;

    .line 3
    iget-object p1, p1, Lyd0;->a:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 5
    invoke-static {p2}, Lis0;->zzey(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lge0;->d:Lyd0;

    .line 7
    iget p2, p2, Lyd0;->h:I

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 8
    invoke-static {p2}, Lis0;->zzey(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lge0;->d:Lyd0;

    const/4 v0, 0x2

    .line 10
    iput v0, p2, Lyd0;->h:I

    .line 11
    iget-object v0, p0, Lge0;->a:Ld23;

    invoke-virtual {p2, v0}, Lyd0;->a(Ld23;)Lse0;

    .line 12
    :cond_0
    iget-object p2, p0, Lge0;->b:Lpd0;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lge0;->c:Lcom/google/android/gms/ads/internal/util/zzbs;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbs;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkb0;

    .line 14
    invoke-interface {p2, v0, v1}, Lwe0;->n(Ljava/lang/String;Lkb0;)V

    .line 15
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
