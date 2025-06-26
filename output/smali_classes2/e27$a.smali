.class public final Le27$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "Main"

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_e

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll17;

    .line 5
    iget-object v4, v1, Ll17;->a:Le27;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v5, v1, Ll17;->e:I

    invoke-static {v5}, Lb27;->i(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 8
    iget-object v5, v1, Ll17;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v5}, Le27;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_1

    .line 10
    sget-object v7, Le27$d;->f:Le27$d;

    invoke-virtual {v4, v5, v7, v1, v6}, Le27;->b(Landroid/graphics/Bitmap;Le27$d;Ll17;Ljava/lang/Exception;)V

    .line 11
    iget-boolean v4, v4, Le27;->n:Z

    if-eqz v4, :cond_2

    .line 12
    iget-object v1, v1, Ll17;->b:Lh27;

    invoke-virtual {v1}, Lh27;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "completed"

    invoke-static {v2, v5, v1, v4}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v4, v1}, Le27;->c(Ll17;)V

    .line 14
    iget-boolean v4, v4, Le27;->n:Z

    if-eqz v4, :cond_2

    .line 15
    iget-object v1, v1, Ll17;->b:Lh27;

    invoke-virtual {v1}, Lh27;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "resumed"

    const-string v5, ""

    .line 16
    invoke-static {v2, v4, v1, v5}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown handler message received: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 18
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_e

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln17;

    .line 21
    iget-object v3, v2, Ln17;->f:Le27;

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v4, v2, Ln17;->o:Ll17;

    .line 24
    iget-object v5, v2, Ln17;->p:Ljava/util/List;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 25
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_5
    if-nez v6, :cond_8

    goto :goto_7

    .line 26
    :cond_8
    iget-object v6, v2, Ln17;->k:Lh27;

    .line 27
    iget-object v6, v6, Lh27;->c:Landroid/net/Uri;

    .line 28
    iget-object v6, v2, Ln17;->t:Ljava/lang/Exception;

    .line 29
    iget-object v8, v2, Ln17;->q:Landroid/graphics/Bitmap;

    .line 30
    iget-object v2, v2, Ln17;->s:Le27$d;

    if-eqz v4, :cond_9

    .line 31
    invoke-virtual {v3, v8, v2, v4, v6}, Le27;->b(Landroid/graphics/Bitmap;Le27$d;Ll17;Ljava/lang/Exception;)V

    :cond_9
    if-eqz v7, :cond_a

    .line 32
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_a

    .line 33
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll17;

    .line 34
    invoke-virtual {v3, v8, v2, v9, v6}, Le27;->b(Landroid/graphics/Bitmap;Le27$d;Ll17;Ljava/lang/Exception;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 35
    :cond_a
    iget-object v2, v3, Le27;->a:Le27$c;

    if-eqz v2, :cond_b

    if-eqz v6, :cond_b

    .line 36
    check-cast v2, Lg06;

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 37
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ll17;

    .line 38
    iget-object v0, p1, Ll17;->a:Le27;

    .line 39
    iget-boolean v0, v0, Le27;->n:Z

    if-eqz v0, :cond_d

    .line 40
    iget-object v0, p1, Ll17;->b:Lh27;

    invoke-virtual {v0}, Lh27;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v2, v1, v0, v3}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_d
    iget-object v0, p1, Ll17;->a:Le27;

    invoke-virtual {p1}, Ll17;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Le27;->a(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
