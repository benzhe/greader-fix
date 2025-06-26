.class public final Llo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$b;


# instance fields
.field public final synthetic a:Lio3;


# direct methods
.method public constructor <init>(Lio3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llo3;->a:Lio3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Llo3;->a:Lio3;

    .line 2
    iget-object p1, p1, Lio3;->b:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Llo3;->a:Lio3;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lio3;->e:Lso3;

    .line 6
    iget-object v2, v0, Lio3;->c:Loo3;

    if-eqz v2, :cond_0

    .line 7
    iput-object v1, v0, Lio3;->c:Loo3;

    .line 8
    :cond_0
    iget-object v0, v0, Lio3;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
