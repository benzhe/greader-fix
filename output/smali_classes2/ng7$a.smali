.class public final Lng7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng7$a$a;
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

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lvb7<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Ltb7;Luc7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lvb7<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lng7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lng7$a;->f:Luc7;

    .line 4
    iput-boolean p3, p0, Lng7$a;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lng7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lng7$a;->g:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lng7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lng7$a;->f:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The resumeFunction returned a null MaybeSource"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    check-cast v0, Lvb7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    .line 7
    new-instance p1, Lng7$a$a;

    iget-object v1, p0, Lng7$a;->e:Ltb7;

    invoke-direct {p1, v1, p0}, Lng7$a$a;-><init>(Ltb7;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, p1}, Lvb7;->a(Ltb7;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    iget-object v1, p0, Lng7$a;->e:Ltb7;

    new-instance v2, Lkc7;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lng7$a;->e:Ltb7;

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
    iget-object v0, p0, Lng7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
