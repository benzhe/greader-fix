.class public final Lfg7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfg7$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public g:Lic7;


# direct methods
.method public constructor <init>(Ltb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lfg7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lfg7$a;->f:Luc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg7$a;->g:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lfg7$a;->g:Lic7;

    .line 3
    iget-object p1, p0, Lfg7$a;->e:Ltb7;

    invoke-interface {p1, p0}, Ltb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic7;

    invoke-static {v0}, Lyc7;->l(Lic7;)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lfg7$a;->g:Lic7;

    invoke-interface {v0}, Lic7;->k()V

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
    :try_start_0
    iget-object v0, p0, Lfg7$a;->f:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p1, Lvb7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p0}, Lfg7$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lfg7$a$a;

    invoke-direct {v0, p0}, Lfg7$a$a;-><init>(Lfg7$a;)V

    invoke-interface {p1, v0}, Lvb7;->a(Ltb7;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lfg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
