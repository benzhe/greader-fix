.class public final Lud$a;
.super Lxd;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final n:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic o:Lud;


# direct methods
.method public constructor <init>(Lud;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lud$a;->o:Lud;

    invoke-direct {p0}, Lxd;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lud$a;->n:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p1, p0, Lud$a;->o:Lud;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p1, Lvd;

    .line 5
    invoke-virtual {p1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Lb9; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lxd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 7
    :cond_0
    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lud$a;->o:Lud;

    invoke-virtual {v0, p0, p1}, Lud;->h(Lud$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lud$a;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lud$a;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lud$a;->o:Lud;

    .line 2
    iget-object v1, v0, Lud;->j:Lud$a;

    if-eq v1, p0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lud;->h(Lud$a;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, v0, Lwd;->e:Z

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lwd;->h:Z

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lud;->l:J

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lud;->j:Lud$a;

    .line 11
    check-cast v0, Lvd;

    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, p1}, Lvd;->j(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lud$a;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lud$a;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lud$a;->o:Lud;

    invoke-virtual {v0}, Lud;->i()V

    return-void
.end method
