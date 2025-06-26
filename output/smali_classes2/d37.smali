.class public Ld37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld37$a;
    }
.end annotation


# direct methods
.method public static a(Ly27;Ljava/util/List;)Ly27;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly27;",
            "Ljava/util/List<",
            "+",
            "Lb37;",
            ">;)",
            "Ly27;"
        }
    .end annotation

    const-string v0, "channel"

    .line 1
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb37;

    .line 3
    new-instance v1, Ld37$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ld37$a;-><init>(Ly27;Lb37;Lc37;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
