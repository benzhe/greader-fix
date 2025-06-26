.class public final Lmg7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
        "Lic7;",
        "Ljava/lang/Runnable;"
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

.field public final f:Lzb7;

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ltb7;Lzb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Lzb7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lmg7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lmg7$a;->f:Lzb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg7$a;->f:Lzb7;

    invoke-virtual {v0, p0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object v0

    invoke-static {p0, v0}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmg7$a;->h:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lmg7$a;->f:Lzb7;

    invoke-virtual {p1, p0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object p1

    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmg7$a;->e:Ltb7;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmg7$a;->g:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lmg7$a;->f:Lzb7;

    invoke-virtual {p1, p0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object p1

    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg7$a;->h:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lmg7$a;->h:Ljava/lang/Throwable;

    .line 3
    iget-object v1, p0, Lmg7$a;->e:Ltb7;

    invoke-interface {v1, v0}, Ltb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmg7$a;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lmg7$a;->g:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lmg7$a;->e:Ltb7;

    invoke-interface {v1, v0}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lmg7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    :goto_0
    return-void
.end method
