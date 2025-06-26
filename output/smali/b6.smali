.class public Lb6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb6$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lb6;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc6;

.field public final c:Lb6$a;

.field public d:Lb6;

.field public e:I

.field public f:I

.field public g:Lx5;


# direct methods
.method public constructor <init>(Lc6;Lb6$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb6;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb6;->e:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lb6;->f:I

    .line 5
    iput-object p1, p0, Lb6;->b:Lc6;

    .line 6
    iput-object p2, p0, Lb6;->c:Lb6$a;

    return-void
.end method


# virtual methods
.method public a(Lb6;I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lb6;->b(Lb6;IIZ)Z

    move-result p1

    return p1
.end method

.method public b(Lb6;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lb6;->h()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lb6;->g(Lb6;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    .line 3
    :cond_1
    iput-object p1, p0, Lb6;->d:Lb6;

    .line 4
    iget-object p4, p1, Lb6;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    .line 5
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lb6;->a:Ljava/util/HashSet;

    .line 6
    :cond_2
    iget-object p1, p0, Lb6;->d:Lb6;

    iget-object p1, p1, Lb6;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-lez p2, :cond_3

    .line 7
    iput p2, p0, Lb6;->e:I

    goto :goto_0

    .line 8
    :cond_3
    iput v1, p0, Lb6;->e:I

    .line 9
    :goto_0
    iput p3, p0, Lb6;->f:I

    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb6;->b:Lc6;

    .line 2
    iget v0, v0, Lc6;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lb6;->f:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lb6;->d:Lb6;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lb6;->b:Lc6;

    .line 4
    iget v2, v2, Lc6;->e0:I

    if-ne v2, v1, :cond_1

    return v0

    .line 5
    :cond_1
    iget v0, p0, Lb6;->e:I

    return v0
.end method

.method public final d()Lb6;
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->c:Lb6$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lb6;->c:Lb6$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lb6;->b:Lc6;

    iget-object v0, v0, Lc6;->B:Lb6;

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lb6;->b:Lc6;

    iget-object v0, v0, Lc6;->D:Lb6;

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lb6;->b:Lc6;

    iget-object v0, v0, Lc6;->A:Lb6;

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lb6;->b:Lc6;

    iget-object v0, v0, Lc6;->C:Lb6;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb6;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6;

    .line 3
    invoke-virtual {v2}, Lb6;->d()Lb6;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lb6;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->d:Lb6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lb6;)Z
    .locals 7

    .line 1
    sget-object v0, Lb6$a;->m:Lb6$a;

    sget-object v1, Lb6$a;->l:Lb6$a;

    sget-object v2, Lb6$a;->j:Lb6$a;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v4, p1, Lb6;->c:Lb6$a;

    .line 3
    iget-object v5, p0, Lb6;->c:Lb6$a;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    if-ne v5, v2, :cond_2

    .line 4
    iget-object p1, p1, Lb6;->b:Lc6;

    .line 5
    iget-boolean p1, p1, Lc6;->y:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lb6;->b:Lc6;

    .line 7
    iget-boolean p1, p1, Lc6;->y:Z

    if-nez p1, :cond_2

    :cond_1
    return v3

    :cond_2
    return v6

    .line 8
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lb6;->c:Lb6$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v3

    .line 10
    :pswitch_1
    sget-object v1, Lb6$a;->g:Lb6$a;

    if-eq v4, v1, :cond_5

    sget-object v1, Lb6$a;->i:Lb6$a;

    if-ne v4, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 11
    :goto_1
    iget-object p1, p1, Lb6;->b:Lc6;

    .line 12
    instance-of p1, p1, Lf6;

    if-eqz p1, :cond_8

    if-nez v1, :cond_6

    if-ne v4, v0, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    move v1, v3

    :cond_8
    return v1

    .line 13
    :pswitch_2
    sget-object v0, Lb6$a;->f:Lb6$a;

    if-eq v4, v0, :cond_a

    sget-object v0, Lb6$a;->h:Lb6$a;

    if-ne v4, v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v0, 0x1

    .line 14
    :goto_3
    iget-object p1, p1, Lb6;->b:Lc6;

    .line 15
    instance-of p1, p1, Lf6;

    if-eqz p1, :cond_d

    if-nez v0, :cond_b

    if-ne v4, v1, :cond_c

    :cond_b
    const/4 v3, 0x1

    :cond_c
    move v0, v3

    :cond_d
    return v0

    :pswitch_3
    if-eq v4, v2, :cond_e

    if-eq v4, v1, :cond_e

    if-eq v4, v0, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->d:Lb6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lb6;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb6;->d:Lb6;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb6;->e:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lb6;->f:I

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->g:Lx5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lx5;

    sget-object v1, Lx5$a;->e:Lx5$a;

    invoke-direct {v0, v1}, Lx5;-><init>(Lx5$a;)V

    iput-object v0, p0, Lb6;->g:Lx5;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lx5;->c()V

    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lb6;->f:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb6;->b:Lc6;

    .line 2
    iget-object v1, v1, Lc6;->f0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb6;->c:Lb6$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
