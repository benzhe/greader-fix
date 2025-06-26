.class public final Lle0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbt0<",
        "Lpd0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lse0;

.field public final synthetic b:Lyd0;


# direct methods
.method public constructor <init>(Lyd0;Lse0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lle0;->b:Lyd0;

    iput-object p2, p0, Lle0;->a:Lse0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lpd0;

    .line 2
    iget-object p1, p0, Lle0;->b:Lyd0;

    .line 3
    iget-object p1, p1, Lyd0;->a:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lle0;->b:Lyd0;

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lyd0;->h:I

    .line 7
    iget-object v0, v0, Lyd0;->g:Lse0;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lle0;->a:Lse0;

    if-eq v1, v0, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lle0;->b:Lyd0;

    .line 11
    iget-object v0, v0, Lyd0;->g:Lse0;

    .line 12
    invoke-virtual {v0}, Lse0;->f()V

    .line 13
    :cond_0
    iget-object v0, p0, Lle0;->b:Lyd0;

    iget-object v1, p0, Lle0;->a:Lse0;

    .line 14
    iput-object v1, v0, Lyd0;->g:Lse0;

    .line 15
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
