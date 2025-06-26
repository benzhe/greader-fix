.class public final Lkf7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ltc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ltc7<",
        "Lic7;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lkf7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkf7<",
            "*>;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lkf7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf7<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lkf7$a;->e:Lkf7;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lic7;

    .line 2
    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    .line 3
    iget-object v0, p0, Lkf7$a;->e:Lkf7;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lkf7$a;->h:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lkf7$a;->e:Lkf7;

    iget-object v1, v1, Lkf7;->f:Lpc7;

    check-cast v1, Lbd7;

    invoke-interface {v1, p1}, Lbd7;->g(Lic7;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkf7$a;->e:Lkf7;

    invoke-virtual {v0, p0}, Lkf7;->y(Lkf7$a;)V

    return-void
.end method
