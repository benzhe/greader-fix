.class public final Le68;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu68;

.field public b:Ljava/util/Locale;

.field public c:Lg68;

.field public d:I


# direct methods
.method public constructor <init>(Lu68;Lb68;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p2, Lb68;->f:Lj58;

    .line 3
    iget-object v1, p2, Lb68;->g:Lz48;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    sget-object v2, Lz68;->b:La78;

    invoke-interface {p1, v2}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj58;

    .line 5
    sget-object v3, Lz68;->a:La78;

    invoke-interface {p1, v3}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz48;

    .line 6
    invoke-static {v2, v0}, Lkt7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v0, v5

    .line 7
    :cond_1
    invoke-static {v3, v1}, Lkt7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v0, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    if-eqz v1, :cond_5

    move-object v3, v1

    :cond_5
    const-string v6, " "

    if-eqz v1, :cond_a

    .line 8
    sget-object v7, Lq68;->K:Lq68;

    invoke-interface {p1, v7}, Lu68;->y(Ly68;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    sget-object v4, Lo58;->g:Lo58;

    .line 10
    :goto_1
    invoke-static {p1}, Lo48;->L(Lu68;)Lo48;

    move-result-object p1

    invoke-virtual {v4, p1, v1}, Lj58;->L(Lo48;Lz48;)Lh58;

    move-result-object p1

    goto/16 :goto_7

    .line 11
    :cond_7
    :try_start_0
    invoke-virtual {v1}, Lz48;->L()Lk78;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Lk78;->e()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 13
    sget-object v8, Lo48;->g:Lo48;

    invoke-virtual {v7, v8}, Lk78;->a(Lo48;)La58;

    move-result-object v7
    :try_end_0
    .catch Ll78; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_8
    move-object v7, v1

    .line 14
    :goto_2
    sget-object v8, Lz68;->e:La78;

    invoke-interface {p1, v8}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La58;

    .line 15
    instance-of v9, v7, La58;

    if-eqz v9, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {v7, v8}, Lz48;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    .line 16
    :cond_9
    new-instance p2, Ll48;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override zone for temporal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    :goto_3
    if-eqz v0, :cond_f

    .line 17
    sget-object v1, Lq68;->C:Lq68;

    invoke-interface {p1, v1}, Lu68;->y(Ly68;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 18
    invoke-virtual {v4, p1}, Lj58;->k(Lu68;)Le58;

    move-result-object v5

    goto :goto_6

    .line 19
    :cond_b
    sget-object v1, Lo58;->g:Lo58;

    if-ne v0, v1, :cond_c

    if-eqz v2, :cond_f

    .line 20
    :cond_c
    invoke-static {}, Lq68;->values()[Lq68;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_f

    aget-object v8, v1, v7

    .line 21
    invoke-virtual {v8}, Lq68;->i()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {p1, v8}, Lu68;->y(Ly68;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_5

    .line 22
    :cond_d
    new-instance p2, Ll48;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override chronology for temporal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 23
    :cond_f
    :goto_6
    new-instance v0, Ld68;

    invoke-direct {v0, v5, p1, v4, v3}, Ld68;-><init>(Le58;Lu68;Lj58;Lz48;)V

    move-object p1, v0

    .line 24
    :goto_7
    iput-object p1, p0, Le68;->a:Lu68;

    .line 25
    iget-object p1, p2, Lb68;->b:Ljava/util/Locale;

    .line 26
    iput-object p1, p0, Le68;->b:Ljava/util/Locale;

    .line 27
    iget-object p1, p2, Lb68;->c:Lg68;

    .line 28
    iput-object p1, p0, Le68;->c:Lg68;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Le68;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le68;->d:I

    return-void
.end method

.method public b(Ly68;)Ljava/lang/Long;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le68;->a:Lu68;

    invoke-interface {v0, p1}, Lu68;->D(Ly68;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ll48; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    iget v0, p0, Le68;->d:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    throw p1
.end method

.method public c(La78;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La78<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le68;->a:Lu68;

    invoke-interface {v0, p1}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget v0, p0, Le68;->d:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ll48;

    const-string v0, "Unable to extract value: "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le68;->a:Lu68;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le68;->a:Lu68;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
