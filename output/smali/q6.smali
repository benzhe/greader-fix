.class public Lq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6$a;
    }
.end annotation


# instance fields
.field public a:Lo6;

.field public b:Z

.field public c:Z

.field public d:Lx6;

.field public e:Lq6$a;

.field public f:I

.field public g:I

.field public h:I

.field public i:Lr6;

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo6;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq6;->a:Lo6;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lq6;->b:Z

    .line 4
    iput-boolean v1, p0, Lq6;->c:Z

    .line 5
    sget-object v2, Lq6$a;->e:Lq6$a;

    iput-object v2, p0, Lq6;->e:Lq6$a;

    const/4 v2, 0x1

    .line 6
    iput v2, p0, Lq6;->h:I

    .line 7
    iput-object v0, p0, Lq6;->i:Lr6;

    .line 8
    iput-boolean v1, p0, Lq6;->j:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq6;->k:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq6;->l:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lq6;->d:Lx6;

    return-void
.end method


# virtual methods
.method public a(Lo6;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lq6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6;

    .line 2
    iget-boolean v0, v0, Lq6;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lq6;->c:Z

    .line 4
    iget-object v0, p0, Lq6;->a:Lo6;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p0}, Lo6;->a(Lo6;)V

    .line 6
    :cond_2
    iget-boolean v0, p0, Lq6;->b:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lq6;->d:Lx6;

    invoke-virtual {p1, p0}, Lx6;->a(Lo6;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lq6;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq6;

    .line 9
    instance-of v4, v3, Lr6;

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_8

    if-ne v1, p1, :cond_8

    .line 10
    iget-boolean p1, v0, Lq6;->j:Z

    if-eqz p1, :cond_8

    .line 11
    iget-object p1, p0, Lq6;->i:Lr6;

    if-eqz p1, :cond_7

    .line 12
    iget-boolean v1, p1, Lq6;->j:Z

    if-eqz v1, :cond_6

    .line 13
    iget v1, p0, Lq6;->h:I

    iget p1, p1, Lq6;->g:I

    mul-int v1, v1, p1

    iput v1, p0, Lq6;->f:I

    goto :goto_1

    :cond_6
    return-void

    .line 14
    :cond_7
    :goto_1
    iget p1, v0, Lq6;->g:I

    iget v0, p0, Lq6;->f:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lq6;->c(I)V

    .line 15
    :cond_8
    iget-object p1, p0, Lq6;->a:Lo6;

    if-eqz p1, :cond_9

    .line 16
    invoke-interface {p1, p0}, Lo6;->a(Lo6;)V

    :cond_9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lq6;->j:Z

    .line 4
    iput v0, p0, Lq6;->g:I

    .line 5
    iput-boolean v0, p0, Lq6;->c:Z

    .line 6
    iput-boolean v0, p0, Lq6;->b:Z

    return-void
.end method

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq6;->d:Lx6;

    iget-object v1, v1, Lx6;->b:Lc6;

    .line 2
    iget-object v1, v1, Lc6;->f0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq6;->e:Lq6$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lq6;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lq6;->g:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unresolved"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") <t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq6;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq6;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
