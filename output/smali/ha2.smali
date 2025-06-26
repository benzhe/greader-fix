.class public final Lha2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnd2<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lqd2<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lla2<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field public final b:Lb20;

.field public final c:Lqd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd2<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(Lqd2;JLb20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd2<",
            "TS;>;J",
            "Lb20;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lha2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p4, p0, Lha2;->b:Lb20;

    .line 4
    iput-object p1, p0, Lha2;->c:Lqd2;

    .line 5
    iput-wide p2, p0, Lha2;->d:J

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lha2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla2;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v1, v0, Lla2;->b:J

    iget-object v3, v0, Lla2;->c:Lb20;

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    :cond_1
    new-instance v0, Lla2;

    iget-object v1, p0, Lha2;->c:Lqd2;

    invoke-interface {v1}, Lqd2;->a()Law2;

    move-result-object v1

    iget-wide v2, p0, Lha2;->d:J

    iget-object v4, p0, Lha2;->b:Lb20;

    invoke-direct {v0, v1, v2, v3, v4}, Lla2;-><init>(Law2;JLb20;)V

    .line 4
    iget-object v1, p0, Lha2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :cond_2
    iget-object v0, v0, Lla2;->a:Law2;

    return-object v0
.end method
