.class public Luo5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luo5$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public final b:Lbu5;

.field public final c:Lyt5;

.field public final d:Ljp5;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lbu5;Lyt5;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Luo5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Luo5;->b:Lbu5;

    .line 6
    iput-object p3, p0, Luo5;->c:Lyt5;

    .line 7
    new-instance p1, Ljp5;

    invoke-direct {p1, p5, p4}, Ljp5;-><init>(ZZ)V

    iput-object p1, p0, Luo5;->d:Ljp5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Field \'"

    const-string v1, "\' is not a "

    invoke-static {v0, p2, v1}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Leu5;Luo5$a;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Luo5;->c:Lyt5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lyt5;->d:Lhu5;

    invoke-virtual {v0, p1}, Lhu5;->c(Leu5;)Lbd6;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lnp5;

    iget-object v1, p0, Luo5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, p2}, Lnp5;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Luo5$a;)V

    .line 4
    invoke-virtual {v0, p1}, Lnp5;->a(Lbd6;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Luo5;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/Timestamp;
    .locals 2

    .line 1
    sget-object v0, Luo5$a;->e:Luo5$a;

    const-string v1, "Provided field path must not be null."

    .line 2
    invoke-static {p1, v1}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Provided serverTimestampBehavior value must not be null."

    .line 3
    invoke-static {v0, v1}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lxo5;->a(Ljava/lang/String;)Lxo5;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lxo5;->a:Leu5;

    .line 6
    invoke-virtual {p0, v1, v0}, Luo5;->b(Leu5;Luo5$a;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    const-class v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p0, v0, p1, v1}, Luo5;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/Timestamp;

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Provided field must not be null."

    .line 1
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Luo5$a;->e:Luo5$a;

    .line 3
    invoke-static {p1}, Lxo5;->a(Ljava/lang/String;)Lxo5;

    move-result-object v1

    const-string v2, "Provided field path must not be null."

    .line 4
    invoke-static {v1, v2}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Provided serverTimestampBehavior value must not be null."

    .line 5
    invoke-static {v0, v2}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v1, Lxo5;->a:Leu5;

    .line 7
    invoke-virtual {p0, v1, v0}, Luo5;->b(Leu5;Luo5$a;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Luo5;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Luo5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Luo5;

    .line 3
    iget-object v1, p0, Luo5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v3, p1, Luo5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Luo5;->b:Lbu5;

    iget-object v3, p1, Luo5;->b:Lbu5;

    .line 4
    invoke-virtual {v1, v3}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Luo5;->c:Lyt5;

    if-nez v1, :cond_2

    iget-object v1, p1, Luo5;->c:Lyt5;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Luo5;->c:Lyt5;

    .line 5
    invoke-virtual {v1, v3}, Lyt5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Luo5;->d:Ljp5;

    iget-object p1, p1, Luo5;->d:Ljp5;

    .line 6
    invoke-virtual {v1, p1}, Ljp5;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Luo5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Luo5;->b:Lbu5;

    invoke-virtual {v1}, Lbu5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Luo5;->c:Lyt5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyt5;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Luo5;->d:Ljp5;

    invoke-virtual {v0}, Ljp5;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DocumentSnapshot{key="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luo5;->b:Lbu5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luo5;->d:Ljp5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luo5;->c:Lyt5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
