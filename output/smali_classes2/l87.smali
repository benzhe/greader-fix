.class public final Ll87;
.super Lc47$f;
.source "SourceFile"


# instance fields
.field public final a:Lx27;

.field public final b:Li47;

.field public final c:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj47;Li47;Lx27;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lx27;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc47$f;-><init>()V

    const-string v0, "method"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lj47;

    iput-object p1, p0, Ll87;->c:Lj47;

    const-string p1, "headers"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Li47;

    iput-object p2, p0, Ll87;->b:Li47;

    const-string p1, "callOptions"

    .line 4
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lx27;

    iput-object p3, p0, Ll87;->a:Lx27;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ll87;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ll87;

    .line 3
    iget-object v2, p0, Ll87;->a:Lx27;

    iget-object v3, p1, Ll87;->a:Lx27;

    invoke-static {v2, v3}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ll87;->b:Li47;

    iget-object v3, p1, Ll87;->b:Li47;

    .line 4
    invoke-static {v2, v3}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ll87;->c:Lj47;

    iget-object p1, p1, Ll87;->c:Lj47;

    .line 5
    invoke-static {v2, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Ll87;->a:Lx27;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ll87;->b:Li47;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Ll87;->c:Lj47;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[method="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll87;->c:Lj47;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll87;->b:Li47;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll87;->a:Lx27;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
