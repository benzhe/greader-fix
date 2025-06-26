.class public final Lqg7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg7$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ltb7<",
        "TT;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Ltb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltb7;Lvb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Lvb7<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lqg7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lqg7$a;->f:Lvb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic7;

    .line 2
    sget-object v1, Lyc7;->e:Lyc7;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lqg7$a;->f:Lvb7;

    new-instance v1, Lqg7$a$a;

    iget-object v2, p0, Lqg7$a;->e:Ltb7;

    invoke-direct {v1, v2, p0}, Lqg7$a$a;-><init>(Ltb7;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lqg7$a;->e:Ltb7;

    invoke-interface {p1, p0}, Ltb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
