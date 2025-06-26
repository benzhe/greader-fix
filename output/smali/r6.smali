.class public Lr6;
.super Lq6;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Lx6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq6;-><init>(Lx6;)V

    .line 2
    instance-of p1, p1, Lu6;

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lq6$a;->f:Lq6$a;

    iput-object p1, p0, Lq6;->e:Lq6$a;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lq6$a;->g:Lq6$a;

    iput-object p1, p0, Lq6;->e:Lq6$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq6;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq6;->j:Z

    .line 3
    iput p1, p0, Lq6;->g:I

    .line 4
    iget-object p1, p0, Lq6;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo6;

    .line 5
    invoke-interface {v0, v0}, Lo6;->a(Lo6;)V

    goto :goto_0

    :cond_1
    return-void
.end method
