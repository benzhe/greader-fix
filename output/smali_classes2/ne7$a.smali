.class public final Lne7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne7;
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
.field public final e:Lcc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:J

.field public final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public h:Ly38;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Lcc7;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lne7$a;->e:Lcc7;

    .line 3
    iput-wide p2, p0, Lne7$a;->f:J

    .line 4
    iput-object p4, p0, Lne7$a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lne7$a;->h:Ly38;

    .line 2
    iget-boolean v0, p0, Lne7$a;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lne7$a;->j:Z

    .line 4
    iget-object v0, p0, Lne7$a;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lne7$a;->e:Lcc7;

    invoke-interface {v1, v0}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lne7$a;->e:Lcc7;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lcc7;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne7$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lne7$a;->j:Z

    .line 4
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lne7$a;->h:Ly38;

    .line 5
    iget-object v0, p0, Lne7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lne7$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lne7$a;->i:J

    .line 3
    iget-wide v2, p0, Lne7$a;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lne7$a;->j:Z

    .line 5
    iget-object v0, p0, Lne7$a;->h:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 6
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lne7$a;->h:Ly38;

    .line 7
    iget-object v0, p0, Lne7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lne7$a;->i:J

    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lne7$a;->h:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lne7$a;->h:Ly38;

    .line 3
    iget-object v0, p0, Lne7$a;->e:Lcc7;

    invoke-interface {v0, p0}, Lcc7;->c(Lic7;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lne7$a;->h:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 2
    sget-object v0, Lpi7;->e:Lpi7;

    iput-object v0, p0, Lne7$a;->h:Ly38;

    return-void
.end method
