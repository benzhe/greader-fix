.class public final Lbz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;J)V
    .locals 0

    iput-object p1, p0, Lbz4;->f:Lsz4;

    iput-wide p2, p0, Lbz4;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbz4;->f:Lsz4;

    iget-wide v1, p0, Lbz4;->e:J

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lsz4;->l(JZ)V

    iget-object v0, p0, Lbz4;->f:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lh15;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
