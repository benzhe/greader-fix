.class public Ltd$a;
.super Lid;
.source "SourceFile"

# interfaces
.implements Lwd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lid<",
        "TD;>;",
        "Lwd$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final k:I

.field public final l:Landroid/os/Bundle;

.field public final m:Lwd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd<",
            "TD;>;"
        }
    .end annotation
.end field

.field public n:Ldd;

.field public o:Ltd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltd$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public p:Lwd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Lwd;Lwd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lwd<",
            "TD;>;",
            "Lwd<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lid;-><init>()V

    .line 2
    iput p1, p0, Ltd$a;->k:I

    .line 3
    iput-object p2, p0, Ltd$a;->l:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, Ltd$a;->m:Lwd;

    .line 5
    iput-object p4, p0, Ltd$a;->p:Lwd;

    .line 6
    iget-object p2, p3, Lwd;->b:Lwd$b;

    if-nez p2, :cond_0

    .line 7
    iput-object p0, p3, Lwd;->b:Lwd$b;

    .line 8
    iput p1, p3, Lwd;->a:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd$a;->m:Lwd;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lwd;->d:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lwd;->f:Z

    .line 4
    iput-boolean v1, v0, Lwd;->e:Z

    .line 5
    invoke-virtual {v0}, Lwd;->f()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd$a;->m:Lwd;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lwd;->d:Z

    .line 3
    invoke-virtual {v0}, Lwd;->g()V

    return-void
.end method

.method public g(Ljd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd<",
            "-TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->g(Ljd;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ltd$a;->n:Ldd;

    .line 3
    iput-object p1, p0, Ltd$a;->o:Ltd$b;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lid;->h(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ltd$a;->p:Lwd;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lwd;->e()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lwd;->f:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lwd;->d:Z

    .line 6
    iput-boolean v0, p1, Lwd;->e:Z

    .line 7
    iput-boolean v0, p1, Lwd;->g:Z

    .line 8
    iput-boolean v0, p1, Lwd;->h:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Ltd$a;->p:Lwd;

    :cond_0
    return-void
.end method

.method public j(Z)Lwd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lwd<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltd$a;->m:Lwd;

    .line 2
    invoke-virtual {v0}, Lwd;->c()Z

    .line 3
    iget-object v0, p0, Ltd$a;->m:Lwd;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lwd;->e:Z

    .line 5
    iget-object v0, p0, Ltd$a;->o:Ltd$b;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0, v0}, Landroidx/lifecycle/LiveData;->g(Ljd;)V

    .line 7
    iput-object v2, p0, Ltd$a;->n:Ldd;

    .line 8
    iput-object v2, p0, Ltd$a;->o:Ltd$b;

    if-eqz p1, :cond_0

    .line 9
    iget-boolean v3, v0, Ltd$b;->c:Z

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, v0, Ltd$b;->b:Lsd$a;

    iget-object v4, v0, Ltd$b;->a:Lwd;

    invoke-interface {v3, v4}, Lsd$a;->k(Lwd;)V

    .line 11
    :cond_0
    iget-object v3, p0, Ltd$a;->m:Lwd;

    .line 12
    iget-object v4, v3, Lwd;->b:Lwd$b;

    if-eqz v4, :cond_5

    if-ne v4, p0, :cond_4

    .line 13
    iput-object v2, v3, Lwd;->b:Lwd$b;

    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, v0, Ltd$b;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 15
    :cond_2
    invoke-virtual {v3}, Lwd;->e()V

    .line 16
    iput-boolean v1, v3, Lwd;->f:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v3, Lwd;->d:Z

    .line 18
    iput-boolean p1, v3, Lwd;->e:Z

    .line 19
    iput-boolean p1, v3, Lwd;->g:Z

    .line 20
    iput-boolean p1, v3, Lwd;->h:Z

    .line 21
    iget-object p1, p0, Ltd$a;->p:Lwd;

    return-object p1

    :cond_3
    return-object v3

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd$a;->n:Ldd;

    .line 2
    iget-object v1, p0, Ltd$a;->o:Ltd$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->g(Ljd;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->d(Ldd;Ljd;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "LoaderInfo{"

    .line 1
    invoke-static {v0, v1}, Ljo;->w(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Ltd$a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Ltd$a;->m:Lwd;

    invoke-static {v1, v0}, Ld0$h;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
