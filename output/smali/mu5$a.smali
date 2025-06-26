.class public Lmu5$a;
.super Lmu5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbd6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmu5;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public d(Lbd6;)Lbd6;
    .locals 4

    .line 1
    invoke-static {p1}, Lmu5;->e(Lbd6;)Ljc6$b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmu5;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p1, Lgj6$a;->f:Lgj6;

    check-cast v3, Ljc6;

    invoke-virtual {v3}, Ljc6;->I()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p1, Lgj6$a;->f:Lgj6;

    check-cast v3, Ljc6;

    invoke-virtual {v3, v2}, Ljc6;->H(I)Lbd6;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Llu5;->e(Lbd6;Lbd6;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 8
    iget-object v3, p1, Lgj6$a;->f:Lgj6;

    check-cast v3, Ljc6;

    invoke-static {v3, v2}, Ljc6;->E(Ljc6;I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbd6$b;->r(Ljc6$b;)Lbd6$b;

    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1
.end method
