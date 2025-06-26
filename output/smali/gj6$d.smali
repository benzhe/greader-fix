.class public final Lgj6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcj6$a<",
        "Lgj6$d;",
        ">;"
    }
.end annotation


# virtual methods
.method public F()Lgl6;
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lgj6$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Lfl6;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u(Lak6$a;Lak6;)Lak6$a;
    .locals 0

    .line 1
    check-cast p1, Lgj6$a;

    check-cast p2, Lgj6;

    invoke-virtual {p1, p2}, Lgj6$a;->p(Lgj6;)Lgj6$a;

    return-object p1
.end method
