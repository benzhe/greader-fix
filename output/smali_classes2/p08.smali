.class public final Lp08;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lk18;

.field public final b:Lhn7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn7<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lk18;

.field public final d:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Lo18;",
            "Lj18;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lq08;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lhn7<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Lr08;


# direct methods
.method public constructor <init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V
    .locals 0

    and-int/lit8 p3, p9, 0x4

    and-int/lit8 p3, p9, 0x20

    if-eqz p3, :cond_0

    .line 1
    sget-object p6, Lhk7;->e:Lhk7;

    :cond_0
    and-int/lit8 p3, p9, 0x40

    if-eqz p3, :cond_1

    .line 2
    new-instance p7, Lr08;

    const/4 p3, 0x7

    const/4 p8, 0x0

    invoke-direct {p7, p8, p8, p8, p3}, Lr08;-><init>(ZZZI)V

    :cond_1
    and-int/lit16 p3, p9, 0x80

    const/4 p8, 0x0

    if-eqz p3, :cond_2

    .line 3
    new-instance p3, Ls08;

    const/4 p9, 0x1

    invoke-direct {p3, p8, p9}, Ls08;-><init>(Ljava/util/Map;I)V

    goto :goto_0

    :cond_2
    move-object p3, p8

    :goto_0
    const-string p9, "scopeQualifier"

    .line 4
    invoke-static {p1, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "primaryType"

    invoke-static {p2, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "definition"

    invoke-static {p4, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "kind"

    invoke-static {p5, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "secondaryTypes"

    invoke-static {p6, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "options"

    invoke-static {p7, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "properties"

    invoke-static {p3, p9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp08;->a:Lk18;

    iput-object p2, p0, Lp08;->b:Lhn7;

    iput-object p8, p0, Lp08;->c:Lk18;

    iput-object p4, p0, Lp08;->d:Ltl7;

    iput-object p5, p0, Lp08;->e:Lq08;

    iput-object p6, p0, Lp08;->f:Ljava/util/List;

    iput-object p7, p0, Lp08;->g:Lr08;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-string v1, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>"

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lp08;

    .line 2
    iget-object v1, p0, Lp08;->b:Lhn7;

    iget-object v2, p1, Lp08;->b:Lhn7;

    invoke-static {v1, v2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v1, p0, Lp08;->c:Lk18;

    iget-object v3, p1, Lp08;->c:Lk18;

    invoke-static {v1, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lp08;->a:Lk18;

    iget-object p1, p1, Lp08;->a:Lk18;

    invoke-static {v1, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp08;->c:Lk18;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lp08;->b:Lhn7;

    invoke-interface {v1}, Lhn7;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lp08;->a:Lk18;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lp08;->e:Lq08;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp08;->b:Lhn7;

    invoke-static {v3}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lp08;->c:Lk18;

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string v2, ",qualifier:"

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lp08;->c:Lk18;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 4
    :goto_0
    iget-object v4, p0, Lp08;->a:Lk18;

    sget-object v5, Lp18;->e:Lp18;

    .line 5
    sget-object v5, Lp18;->d:Ll18;

    .line 6
    invoke-static {v4, v5}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    const-string v4, ",scope:"

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lp08;->a:Lk18;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_1
    iget-object v5, p0, Lp08;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 8
    iget-object v6, p0, Lp08;->f:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lp08$a;->e:Lp08$a;

    const/16 v13, 0x1e

    const-string v7, ","

    invoke-static/range {v6 .. v13}, Lek7;->k(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lpl7;I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ",binds:"

    .line 9
    invoke-static {v5, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
