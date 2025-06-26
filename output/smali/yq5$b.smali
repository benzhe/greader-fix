.class public Lyq5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lyt5;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxq5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxq5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxq5;

    if-nez v2, :cond_1

    .line 3
    iget-object v2, v3, Lxq5;->b:Leu5;

    .line 4
    sget-object v3, Leu5;->f:Leu5;

    invoke-virtual {v2, v3}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    iput-object p1, p0, Lyq5$b;->e:Ljava/util/List;

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "QueryComparator needs to have a key ordering"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lyt5;

    check-cast p2, Lyt5;

    .line 2
    iget-object v0, p0, Lyq5$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxq5;

    .line 3
    iget-object v3, v1, Lxq5;->b:Leu5;

    sget-object v4, Leu5;->f:Leu5;

    invoke-virtual {v3, v4}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, v1, Lxq5;->a:Lxq5$a;

    .line 5
    iget v1, v1, Lxq5$a;->e:I

    .line 6
    iget-object v2, p1, Lfu5;->a:Lbu5;

    iget-object v3, p2, Lfu5;->a:Lbu5;

    .line 7
    invoke-virtual {v2, v3}, Lbu5;->i(Lbu5;)I

    move-result v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, v1, Lxq5;->b:Leu5;

    invoke-virtual {p1, v3}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v3

    .line 9
    iget-object v4, v1, Lxq5;->b:Leu5;

    invoke-virtual {p2, v4}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Trying to compare documents on fields that don\'t exist."

    .line 10
    invoke-static {v5, v6, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, v1, Lxq5;->a:Lxq5$a;

    .line 12
    iget v1, v1, Lxq5$a;->e:I

    .line 13
    invoke-static {v3, v4}, Llu5;->b(Lbd6;Lbd6;)I

    move-result v2

    :goto_1
    mul-int v2, v2, v1

    if-eqz v2, :cond_0

    :cond_3
    return v2
.end method
