.class public Lmu5$b;
.super Lmu5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
    .locals 3

    .line 1
    invoke-static {p1}, Lmu5;->e(Lbd6;)Ljc6$b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmu5;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    .line 4
    invoke-static {p1, v1}, Llu5;->d(Lkc6;Lbd6;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 6
    iget-object v2, p1, Lgj6$a;->f:Lgj6;

    check-cast v2, Ljc6;

    invoke-static {v2, v1}, Ljc6;->C(Ljc6;Lbd6;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbd6$b;->r(Ljc6$b;)Lbd6$b;

    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1
.end method
