.class public final Lsf7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf7;
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
        "Ljava/lang/Object;",
        "Lpb7<",
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

.field public f:Ly38;

.field public g:Z

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsf7$a;->e:Ltb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsf7$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsf7$a;->g:Z

    .line 3
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lsf7$a;->f:Ly38;

    .line 4
    iget-object v0, p0, Lsf7$a;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lsf7$a;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lsf7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lsf7$a;->e:Ltb7;

    invoke-interface {v1, v0}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsf7$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsf7$a;->g:Z

    .line 4
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lsf7$a;->f:Ly38;

    .line 5
    iget-object v0, p0, Lsf7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lsf7$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsf7$a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lsf7$a;->g:Z

    .line 4
    iget-object p1, p0, Lsf7$a;->f:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 5
    sget-object p1, Lpi7;->e:Lpi7;

    iput-object p1, p0, Lsf7$a;->f:Ly38;

    .line 6
    iget-object p1, p0, Lsf7$a;->e:Ltb7;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Lsf7$a;->h:Ljava/lang/Object;

    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsf7$a;->f:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lsf7$a;->f:Ly38;

    .line 3
    iget-object v0, p0, Lsf7$a;->e:Ltb7;

    invoke-interface {v0, p0}, Ltb7;->c(Lic7;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsf7$a;->f:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 2
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lsf7$a;->f:Ly38;

    return-void
.end method
