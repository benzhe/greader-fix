.class public final Ll15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lj25;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lj25;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ll15;->e:Lj25;

    iput-object p2, p0, Ll15;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll15;->e:Lj25;

    .line 1
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Ll15;->e:Lj25;

    iget-object v1, p0, Ll15;->f:Ljava/lang/Runnable;

    .line 2
    iget-object v2, v0, Lj25;->j:Lrx4;

    .line 3
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lox4;->d()V

    iget-object v2, v0, Lj25;->n:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lj25;->n:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lj25;->n:Ljava/util/List;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ll15;->e:Lj25;

    .line 8
    invoke-virtual {v0}, Lj25;->h()V

    return-void
.end method
