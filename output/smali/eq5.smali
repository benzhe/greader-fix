.class public Leq5;
.super Lfq5;
.source "SourceFile"


# instance fields
.field public final a:Lfq5$a;

.field public final b:Lbd6;

.field public final c:Leu5;


# direct methods
.method public constructor <init>(Leu5;Lfq5$a;Lbd6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfq5;-><init>()V

    .line 2
    iput-object p1, p0, Leq5;->c:Leu5;

    .line 3
    iput-object p2, p0, Leq5;->a:Lfq5$a;

    .line 4
    iput-object p3, p0, Leq5;->b:Lbd6;

    return-void
.end method

.method public static c(Leu5;Lfq5$a;Lbd6;)Leq5;
    .locals 5

    .line 1
    sget-object v0, Lfq5$a;->m:Lfq5$a;

    sget-object v1, Lfq5$a;->o:Lfq5$a;

    sget-object v2, Lfq5$a;->n:Lfq5$a;

    sget-object v3, Lfq5$a;->l:Lfq5$a;

    invoke-virtual {p0}, Leu5;->N()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p1, v2, :cond_0

    .line 2
    new-instance p1, Lpq5;

    invoke-direct {p1, p0, p2}, Lpq5;-><init>(Leu5;Lbd6;)V

    return-object p1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 3
    new-instance p1, Lqq5;

    invoke-direct {p1, p0, p2}, Lqq5;-><init>(Leu5;Lbd6;)V

    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v3, p1, Lfq5$a;->e:Ljava/lang/String;

    const-string v4, "queries don\'t make sense on document keys"

    .line 6
    invoke-static {v2, v3, v4}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v0, Loq5;

    invoke-direct {v0, p0, p1, p2}, Loq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    return-object v0

    :cond_3
    if-ne p1, v3, :cond_4

    .line 9
    new-instance p1, Lvp5;

    invoke-direct {p1, p0, p2}, Lvp5;-><init>(Leu5;Lbd6;)V

    return-object p1

    :cond_4
    if-ne p1, v2, :cond_5

    .line 10
    new-instance p1, Lnq5;

    invoke-direct {p1, p0, p2}, Lnq5;-><init>(Leu5;Lbd6;)V

    return-object p1

    :cond_5
    if-ne p1, v0, :cond_6

    .line 11
    new-instance p1, Lup5;

    invoke-direct {p1, p0, p2}, Lup5;-><init>(Leu5;Lbd6;)V

    return-object p1

    :cond_6
    if-ne p1, v1, :cond_7

    .line 12
    new-instance p1, Lvq5;

    invoke-direct {p1, p0, p2}, Lvq5;-><init>(Leu5;Lbd6;)V

    return-object p1

    .line 13
    :cond_7
    new-instance v0, Leq5;

    invoke-direct {v0, p0, p1, p2}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Leq5;->c:Leu5;

    .line 3
    invoke-virtual {v1}, Leu5;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Leq5;->a:Lfq5$a;

    .line 5
    iget-object v1, v1, Lfq5$a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Leq5;->b:Lbd6;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {v2, v1}, Llu5;->a(Ljava/lang/StringBuilder;Lbd6;)V

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lyt5;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Leq5;->c:Leu5;

    invoke-virtual {p1, v0}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object p1

    .line 2
    iget-object v0, p0, Leq5;->a:Lfq5$a;

    sget-object v1, Lfq5$a;->i:Lfq5$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Leq5;->b:Lbd6;

    invoke-static {p1, v0}, Llu5;->b(Lbd6;Lbd6;)I

    move-result p1

    invoke-virtual {p0, p1}, Leq5;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Llu5;->l(Lbd6;)I

    move-result v0

    iget-object v1, p0, Leq5;->b:Lbd6;

    invoke-static {v1}, Llu5;->l(Lbd6;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Leq5;->b:Lbd6;

    .line 5
    invoke-static {p1, v0}, Llu5;->b(Lbd6;Lbd6;)I

    move-result p1

    invoke-virtual {p0, p1}, Leq5;->d(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public d(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Leq5;->a:Lfq5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Leq5;->a:Lfq5$a;

    aput-object v0, p1, v1

    const-string v0, "Unknown FieldFilter operator: %s"

    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1

    :cond_2
    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    if-nez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    if-gtz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    :cond_a
    if-gez p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Leq5;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Leq5;

    .line 3
    iget-object v1, p0, Leq5;->a:Lfq5$a;

    iget-object v2, p1, Leq5;->a:Lfq5$a;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Leq5;->c:Leu5;

    iget-object v2, p1, Leq5;->c:Leu5;

    invoke-virtual {v1, v2}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leq5;->b:Lbd6;

    iget-object p1, p1, Leq5;->b:Lbd6;

    invoke-virtual {v1, p1}, Lgj6;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Leq5;->a:Lfq5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Leq5;->c:Leu5;

    invoke-virtual {v1}, Lvt5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Leq5;->b:Lbd6;

    invoke-virtual {v0}, Lgj6;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leq5;->c:Leu5;

    invoke-virtual {v1}, Leu5;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leq5;->a:Lfq5$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leq5;->b:Lbd6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
