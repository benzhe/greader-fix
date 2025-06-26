.class public final Lke0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs0;


# instance fields
.field public final synthetic a:Lse0;

.field public final synthetic b:Lyd0;


# direct methods
.method public constructor <init>(Lyd0;Lse0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lke0;->b:Lyd0;

    iput-object p2, p0, Lke0;->a:Lse0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lke0;->b:Lyd0;

    .line 2
    iget-object v0, v0, Lyd0;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lke0;->b:Lyd0;

    const/4 v2, 0x1

    .line 5
    iput v2, v1, Lyd0;->h:I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lke0;->a:Lse0;

    invoke-virtual {v1}, Lse0;->f()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
