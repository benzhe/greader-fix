.class public Lpo5;
.super Lhp5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Liu5;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lyq5;->a(Liu5;)Lyq5;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lhp5;-><init>(Lyq5;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 2
    invoke-virtual {p1}, Lvt5;->I()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid collection reference. Collection references must have an odd number of segments, but "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Liu5;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lvt5;->I()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lto5;
    .locals 3

    const-string v0, "Provided document path must not be null."

    .line 1
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lhp5;->a:Lyq5;

    .line 3
    iget-object v0, v0, Lyq5;->e:Liu5;

    .line 4
    invoke-static {p1}, Liu5;->N(Ljava/lang/String;)Liu5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvt5;->i(Lvt5;)Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    iget-object v0, p0, Lhp5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 5
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lto5;

    .line 7
    new-instance v2, Lbu5;

    invoke-direct {v2, p1}, Lbu5;-><init>(Liu5;)V

    .line 8
    invoke-direct {v1, v2, v0}, Lto5;-><init>(Lbu5;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid document reference. Document references must have an even number of segments, but "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Liu5;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lvt5;->I()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
